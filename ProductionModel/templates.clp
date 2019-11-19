(deftemplate ioproxy
	(multislot messages)
)

(deffacts proxy-fact
	(ioproxy
		(messages)
	)
)

(defrule append-output-and-proceed
	(declare (salience 99))
	?current-message <- (appendmessage ?new-msg)
	?proxy <- (ioproxy (messages $?msg-list))
	=>
	(modify ?proxy (messages $?msg-list ?new-msg))
	(retract ?current-message)
)

(deftemplate user_checked
    (slot id)
)