(deftemplate MAIN::caldera
   (slot estado))

(deffacts MAIN::caldera
   (error-de-estado confirmado)
   (valvula cerrada)
   (temperatura alta))

(defrule MAIN::fallo-sistema
   (error-de-estado confirmado)
   (or  (and (temperatura alta)
             (valvula cerrada))
        (and (temperatura baja)
             (valvula abierta)))
   =>
   (printout t "El sistema tiene un problema de fluido" crlf))

