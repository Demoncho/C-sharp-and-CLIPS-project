(defrule R1
    (declare (salience 0))
    (fact (id F1) (checked 1))
    (extra (id S2) (checked 0))
    ?res <- (extra (id S2))
    =>
    (modify ?res (checked 1))
    (assert (checker "R1"))
)

(defrule R2
    (declare (salience 0))
    (fact (id F8) (checked 1))
    (extra (id S1) (checked 0))
    ?res <- (extra (id S1))
    =>
    (modify ?res (checked 1))
    (assert (checker "R2"))
)

(defrule R3
    (declare (salience 0))
    (fact (id F3) (checked 1))
    (fact (id F20) (checked 1))
    (extra (id S4) (checked 0))
    ?res <- (extra (id S4))
    =>
    (modify ?res (checked 1))
    (assert (checker "R3"))
)

(defrule R4
    (declare (salience 0))
    (fact (id F4) (checked 1))
    (fact (id F15) (checked 1))
    (extra (id S5) (checked 0))
    ?res <- (extra (id S5))
    =>
    (modify ?res (checked 1))
    (assert (checker "R4"))
)

(defrule R5
    (declare (salience 0))
    (fact (id F14) (checked 1))
    (fact (id F7) (checked 1))
    (extra (id S2) (checked 0))
    ?res <- (extra (id S2))
    =>
    (modify ?res (checked 1))
    (assert (checker "R5"))
)

(defrule R6
    (declare (salience 0))
    (fact (id F12) (checked 1))
    (fact (id F16) (checked 1))
    (extra (id S6) (checked 0))
    ?res <- (extra (id S6))
    =>
    (modify ?res (checked 1))
    (assert (checker "R6"))
)

(defrule R7
    (declare (salience 0))
    (fact (id F17) (checked 1))
    (extra (id S3) (checked 0))
    ?res <- (extra (id S3))
    =>
    (modify ?res (checked 1))
    (assert (checker "R7"))
)

(defrule R8
    (declare (salience 0))
    (fact (id F16) (checked 1))
    (fact (id F20) (checked 1))
    (extra (id S6) (checked 0))
    ?res <- (extra (id S6))
    =>
    (modify ?res (checked 1))
    (assert (checker "R8"))
)

(defrule R9
    (declare (salience 0))
    (fact (id F2) (checked 1))
    (fact (id F5) (checked 1))
    (extra (id S4) (checked 0))
    ?res <- (extra (id S4))
    =>
    (modify ?res (checked 1))
    (assert (checker "R9"))
)

(defrule R10
    (declare (salience 0))
    (fact (id F2) (checked 1))
    (fact (id F11) (checked 1))
    (fact (id F15) (checked 1))
    (extra (id S7) (checked 0))
    ?res <- (extra (id S7))
    =>
    (modify ?res (checked 1))
    (assert (checker "R10"))
)

(defrule R11
    (declare (salience 0))
    (fact (id F4) (checked 1))
    (fact (id F17) (checked 1))
    (fact (id F19) (checked 1))
    (extra (id S8) (checked 0))
    ?res <- (extra (id S8))
    =>
    (modify ?res (checked 1))
    (assert (checker "R11"))
)

(defrule R12
    (declare (salience 0))
    (fact (id F13) (checked 1))
    (extra (id S5) (checked 1))
    (extra (id S9) (checked 0))
    ?res <- (extra (id S9))
    =>
    (modify ?res (checked 1))
    (assert (checker "R12"))
)

(defrule R13
    (declare (salience 0))
    (fact (id F6) (checked 1))
    (fact (id F10) (checked 1))
    (extra (id S9) (checked 0))
    ?res <- (extra (id S9))
    =>
    (modify ?res (checked 1))
    (assert (checker "R13"))
)

(defrule R14
    (declare (salience 0))
    (fact (id F10) (checked 1))
    (extra (id S10) (checked 0))
    ?res <- (extra (id S10))
    =>
    (modify ?res (checked 1))
    (assert (checker "R14"))
)

(defrule R15
    (declare (salience 0))
    (fact (id F6) (checked 1))
    (extra (id S10) (checked 0))
    ?res <- (extra (id S10))
    =>
    (modify ?res (checked 1))
    (assert (checker "R15"))
)

(defrule R16
    (declare (salience 0))
    (extra (id S4) (checked 1))
    (fact (id F3) (checked 1))
    (fact (id F20) (checked 1))
    (fact (id F9) (checked 1))
    (film (id T2) (checked 0))
    ?res <- (film (id T2))
    =>
    (modify ?res (checked 1))
    (assert (checker "R16"))
)

(defrule R17
    (declare (salience 0))
    (extra (id S7) (checked 1))
    (fact (id F19) (checked 1))
    (film (id T1) (checked 0))
    ?res <- (film (id T1))
    =>
    (modify ?res (checked 1))
    (assert (checker "R17"))
)

(defrule R18
    (declare (salience 0))
    (extra (id S8) (checked 1))
    (film (id T3) (checked 0))
    ?res <- (film (id T3))
    =>
    (modify ?res (checked 1))
    (assert (checker "R18"))
)

(defrule R19
    (declare (salience 0))
    (fact (id F1) (checked 1))
    (fact (id F2) (checked 1))
    (film (id T4) (checked 0))
    ?res <- (film (id T4))
    =>
    (modify ?res (checked 1))
    (assert (checker "R19"))
)

(defrule R20
    (declare (salience 0))
    (extra (id S1) (checked 1))
    (fact (id F8) (checked 1))
    (fact (id F9) (checked 1))
    (film (id T5) (checked 0))
    ?res <- (film (id T5))
    =>
    (modify ?res (checked 1))
    (assert (checker "R20"))
)

(defrule R21
    (declare (salience 0))
    (extra (id S10) (checked 1))
    (fact (id F10) (checked 1))
    (fact (id F17) (checked 1))
    (film (id T6) (checked 0))
    ?res <- (film (id T6))
    =>
    (modify ?res (checked 1))
    (assert (checker "R21"))
)

(defrule R22
    (declare (salience 0))
    (fact (id F3) (checked 1))
    (extra (id S1) (checked 0))
    ?res <- (extra (id S1))
    =>
    (modify ?res (checked 1))
    (assert (checker "R22"))
)

(defrule R23
    (declare (salience 0))
    (fact (id F18) (checked 1))
    (fact (id F14) (checked 1))
    (extra (id S3) (checked 0))
    ?res <- (extra (id S3))
    =>
    (modify ?res (checked 1))
    (assert (checker "R23"))
)

(defrule R24
    (declare (salience 0))
    (extra (id S2) (checked 1))
    (fact (id F18) (checked 1))
    (fact (id F4) (checked 1))
    (film (id T7) (checked 0))
    ?res <- (film (id T7))
    =>
    (modify ?res (checked 1))
    (assert (checker "R24"))
)

(defrule R25
    (declare (salience 0))
    (extra (id S9) (checked 1))
    (fact (id F6) (checked 1))
    (film (id T8) (checked 0))
    ?res <- (film (id T8))
    =>
    (modify ?res (checked 1))
    (assert (checker "R25"))
)

(defrule R26
    (declare (salience 0))
    (extra (id S9) (checked 1))
    (fact (id F13) (checked 1))
    (film (id T9) (checked 0))
    ?res <- (film (id T9))
    =>
    (modify ?res (checked 1))
    (assert (checker "R26"))
)

(defrule R27
    (declare (salience 0))
    (extra (id S1) (checked 1))
    (fact (id F4) (checked 1))
    (fact (id F11) (checked 1))
    (fact (id F2) (checked 1))
    (film (id T10) (checked 0))
    ?res <- (film (id T10))
    =>
    (modify ?res (checked 1))
    (assert (checker "R27"))
)

(defrule R28
    (declare (salience 0))
    (extra (id S6) (checked 1))
    (fact (id F17) (checked 1))
    (fact (id F18) (checked 1))
    (film (id T11) (checked 0))
    ?res <- (film (id T11))
    =>
    (modify ?res (checked 1))
    (assert (checker "R28"))
)

(defrule R29
    (declare (salience 0))
    (extra (id S1) (checked 1))
    (fact (id F12) (checked 1))
    (fact (id F13) (checked 1))
    (film (id T12) (checked 0))
    ?res <- (film (id T12))
    =>
    (modify ?res (checked 1))
    (assert (checker "R29"))
)

(defrule R30
    (declare (salience 0))
    (fact (id F12) (checked 1))
    (extra (id S11) (checked 0))
    ?res <- (extra (id S11))
    =>
    (modify ?res (checked 1))
    (assert (checker "R30"))
)

(defrule R31
    (declare (salience 0))
    (fact (id F21) (checked 1))
    (extra (id S12) (checked 0))
    ?res <- (extra (id S12))
    =>
    (modify ?res (checked 1))
    (assert (checker "R31"))
)

(defrule R32
    (declare (salience 0))
    (fact (id F4) (checked 1))
    (extra (id S4) (checked 1))
    (fact (id F2) (checked 1))
    (fact (id F8) (checked 1))
    (film (id T14) (checked 0))
    ?res <- (film (id T14))
    =>
    (modify ?res (checked 1))
    (assert (checker "R32"))
)

(defrule R33
    (declare (salience 0))
    (extra (id S12) (checked 1))
    (extra (id S13) (checked 1))
    (fact (id F11) (checked 1))
    (film (id T15) (checked 0))
    ?res <- (film (id T15))
    =>
    (modify ?res (checked 1))
    (assert (checker "R33"))
)

(defrule R34
    (declare (salience 0))
    (fact (id F5) (checked 1))
    (extra (id S4) (checked 1))
    (extra (id S10) (checked 1))
    (fact (id F11) (checked 1))
    (fact (id F4) (checked 1))
    (film (id T17) (checked 0))
    ?res <- (film (id T17))
    =>
    (modify ?res (checked 1))
    (assert (checker "R34"))
)

(defrule R35
    (declare (salience 0))
    (fact (id F5) (checked 1))
    (extra (id S4) (checked 1))
    (fact (id F2) (checked 1))
    (fact (id F11) (checked 1))
    (film (id T16) (checked 0))
    ?res <- (film (id T16))
    =>
    (modify ?res (checked 1))
    (assert (checker "R35"))
)

(defrule R36
    (declare (salience 0))
    (fact (id F2) (checked 1))
    (fact (id F4) (checked 1))
    (extra (id S14) (checked 0))
    ?res <- (extra (id S14))
    =>
    (modify ?res (checked 1))
    (assert (checker "R36"))
)

(defrule R37
    (declare (salience 0))
    (extra (id S1) (checked 1))
    (extra (id S3) (checked 1))
    (extra (id S15) (checked 0))
    ?res <- (extra (id S15))
    =>
    (modify ?res (checked 1))
    (assert (checker "R37"))
)

(defrule R38
    (declare (salience 0))
    (fact (id F7) (checked 1))
    (fact (id F14) (checked 1))
    (fact (id F19) (checked 1))
    (extra (id S2) (checked 1))
    (film (id T18) (checked 0))
    ?res <- (film (id T18))
    =>
    (modify ?res (checked 1))
    (assert (checker "R38"))
)

(defrule R39
    (declare (salience 0))
    (fact (id F6) (checked 1))
    (fact (id F13) (checked 1))
    (extra (id S7) (checked 1))
    (extra (id S14) (checked 1))
    (film (id T19) (checked 0))
    ?res <- (film (id T19))
    =>
    (modify ?res (checked 1))
    (assert (checker "R39"))
)

(defrule R40
    (declare (salience 0))
    (fact (id F6) (checked 1))
    (fact (id F2) (checked 1))
    (fact (id F13) (checked 1))
    (extra (id S7) (checked 0))
    ?res <- (extra (id S7))
    =>
    (modify ?res (checked 1))
    (assert (checker "R40"))
)

(defrule R41
    (declare (salience 0))
    (extra (id S15) (checked 1))
    (fact (id F12) (checked 1))
    (film (id T20) (checked 0))
    ?res <- (film (id T20))
    =>
    (modify ?res (checked 1))
    (assert (checker "R41"))
)

(defrule R42
    (declare (salience 0))
    (fact (id F13) (checked 1))
    (extra (id S13) (checked 0))
    ?res <- (extra (id S13))
    =>
    (modify ?res (checked 1))
    (assert (checker "R42"))
)

(defrule R43
    (declare (salience 0))
    (extra (id S11) (checked 1))
    (extra (id S10) (checked 1))
    (extra (id S5) (checked 1))
    (film (id T13) (checked 0))
    ?res <- (film (id T13))
    =>
    (modify ?res (checked 1))
    (assert (checker "R43"))
)

(defrule R44
    (declare (salience 0))
    (fact (id F8) (checked 1))
    (extra (id S4) (checked 0))
    ?res <- (extra (id S4))
    =>
    (modify ?res (checked 1))
    (assert (checker "R44"))
)

