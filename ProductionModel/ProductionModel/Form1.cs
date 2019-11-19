using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CLIPSNET;

namespace ProductionModel
{
    public partial class Form1 : Form
    {
        private CLIPSNET.Environment db_clips = new CLIPSNET.Environment();
        private CLIPSNET.Environment clips = new CLIPSNET.Environment();
        string filename = "C:/Users/demon/Desktop/ProductionModel/model.txt";
        Dictionary<string, string> facts;

        public Form1()
        {
            InitializeComponent();
            parse();
        }
        
        public void parse()
        {
            List<string> lines = System.IO.File.ReadAllLines(filename, Encoding.UTF8).ToList();
            facts = new Dictionary<string, string>();

            //facts
            var clp = "(deftemplate fact\n    (slot id)\n    (slot name)\n    (slot checked (default 0))\n)\n\n(deffacts fact\n";
            for (int i = 0; i < 21; ++i)
            {
                var str = lines[i].Split(new char[] { ':', '\t' }, StringSplitOptions.RemoveEmptyEntries);
                clp += "    (fact (id " + str[0].Trim() + ") (name \"" + str[1].Trim() + "\"))\n";
                facts.Add(str[1].Trim().ToLower(), str[0].Trim());
            }

            clp += ")";
            System.IO.File.WriteAllText("../../../facts.clp", clp);
            clips.LoadFromString(System.IO.File.ReadAllText("../../../facts.clp"));


            //sup facts
            clp = "";
            clp = "(deftemplate extra\n    (slot id)\n    (slot name)\n    (slot checked (default 0))\n)\n\n(deffacts extra\n";
            for (int i = 22; i < 37; ++i)
            {
                var str = lines[i].Split(new char[] { ':', '\t' }, StringSplitOptions.RemoveEmptyEntries);
                clp += "    (extra (id " + str[0].Trim() + ") (name \"" + str[1].Trim() + "\"))\n";
            }
            clp += ")";
            System.IO.File.WriteAllText("../../../extra.clp", clp);
            clips.LoadFromString(System.IO.File.ReadAllText("../../../extra.clp"));


            //films
            clp = "";
            clp = "(deftemplate film\n    (slot id)\n    (slot name)\n    (slot checked (default 0))\n)\n\n(deffacts film\n";
            for (int i = 38; i < 58; ++i)
            {
                var str = lines[i].Split(new char[] { ':', '\t' }, StringSplitOptions.RemoveEmptyEntries);
                clp += "    (film (id " + str[0].Trim() + ") (name \"" + str[1].Trim() + "\"))\n";
            }
            clp += ")";
            System.IO.File.WriteAllText("../../../films.clp", clp);
            clips.LoadFromString(System.IO.File.ReadAllText("../../../films.clp"));


            //rules
            clp = "";
            for (int i = 59; i < 103; ++i)
            {
                string rule = "";
                var str = lines[i].Split(new char[] { ':', '\t' }, StringSplitOptions.RemoveEmptyEntries);
                string rule_id = str[0].Trim();
                var fact_str = str[1].Split(new char[] { ',', '\t' }, StringSplitOptions.RemoveEmptyEntries);
                var res_id = str[2].Trim();

                rule += "(defrule " + rule_id + "\n";
                rule += "    (declare (salience 0))\n";

                for (int j = 0; j < fact_str.Count(); ++j)
                {
                    string index = fact_str[j].Trim();
                    if (index[0] == 'F')
                        rule += "    (fact (id " + index + ") (checked 1))\n";
                    else
                        rule += "    (extra (id " + index + ") (checked 1))\n";
                }

                if (res_id[0] == 'T')
                {
                    rule += "    (film (id " + res_id + ") (checked 0))\n";
                    rule += "    ?res <- (film (id " + res_id + "))\n";
                }
                else
                {
                    rule += "    (extra (id " + res_id + ") (checked 0))\n";
                    rule += "    ?res <- (extra (id " + res_id + "))\n";
                }
                rule += "    =>\n";
                rule += "    (modify ?res (checked 1))\n";
                rule += $"    (assert (checker \"{rule_id}\"))\n";
                rule += ")\n\n";
                clp += rule;

                System.IO.File.WriteAllText("../../../my_rules.clp", clp);
            }
            
            clips.LoadFromString(System.IO.File.ReadAllText("../../../my_rules.clp"));
            clips.LoadFromString(System.IO.File.ReadAllText("../../../templates.clp"));
            clips.LoadFromString(System.IO.File.ReadAllText("../../../rules.clp"));
        }

        private void HandleResponse()
        {
            //  Вытаскиаваем факт из ЭС
            FactAddressValue fv = clips.FindFact("ioproxy");

            MultifieldValue damf = (MultifieldValue)fv["messages"];
            List<string> films = new List<string>();
            for (int i = 0; i < damf.Count; i++)
            {
                LexemeValue da = (LexemeValue)damf[i];
                byte[] bytes = Encoding.Default.GetBytes(da.Value);
                var elem = Encoding.UTF8.GetString(bytes);
                films.Add(elem);
            }
            label_films.Text = "";
            for (int i = 0; i < films.Count; i++)
            {
                label_films.Text += films[i].ToString() + "\n";
            }
            clips.Eval("(assert (clearmessage))");
        }

        private void button_find_Click(object sender, EventArgs e)
        {
            clips.Reset();

            foreach (CheckBox check in groupBox_facts.Controls.OfType<CheckBox>())
            {
                if (check.Checked)
                {
                    string fact_name = check.Text.ToString().ToLower();
                    clips.AssertString("(user_checked (id " + facts[fact_name] + "))");
                }
            }
            clips.Run();

            var curr_facts = clips.GetFactList();
            foreach (var fact in curr_facts.Where(f => f.RelationName == "checker"))
            {
                System.Diagnostics.Debug.WriteLine(fact.GetSlotValues()[0].Contents);
            }
            
            HandleResponse();
        }
    }
}