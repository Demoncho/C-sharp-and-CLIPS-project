(defrule main_rule
   (declare (salience -1))
   (film (name ?name) (checked 1))
   =>
   (assert (appendmessage (str-cat ?name)))
) 

(defrule anton2
   (declare (salience 1))
   (user_checked (id ?s))
   ?userF <- (fact (id ?s))
   =>
   (modify ?userF (checked 1))
)