(defrule calcula-max
(val ?x)
?h <- (max ?y&:(> ?x ?y))
=>
(retract ?h)
(assert (max ?x))
)

(defrule print-max
(declare (salience -10))
(max ?x)
=>
(printout t ?x crlf)
)

(deffacts maximo
(val 13)
(val 50)
(val 30)
(val 15)
(val 70)
(val 5)
)

(defrule init "Inicializa el calculo del maximo"
 (not (max ?))
=>
(assert (max 0))
)

