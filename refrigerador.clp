(deffacts MAIN::refrigerador
   (refrigerador luz on)
   (refrigerador puerta abierta)
   (refrigerador temperatura 12))

(defrule MAIN::regla-refri
   (refrigerador luz on)
   (refrigerador puerta abierta)
   =>
   (printout t "La comida se dania - Puerta abierta" crlf)
   (assert (refrigerador comida estropeada)))

