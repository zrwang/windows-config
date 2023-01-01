; Toggle key Press of j
!+j::
    RepeatKeyJ := !RepeatKeyJ
    If RepeatKeyJ {
        SetTimer, SendTheKeyJ, 2000	; The "2000" here is the number of milliseconds between repeats.
        SetTimer, SendTheKeyK, Off
    }
    Else
        SetTimer, SendTheKeyJ, Off
Return

SendTheKeyJ:
    SendInput, j
Return

; Toggle key press of k
!+k::
    RepeatKeyK := !RepeatKeyK
    If RepeatKeyK {
        SetTimer, SendTheKeyK, 2000	; The "2000" here is the number of milliseconds between repeats.
        SetTimer, SendTheKeyJ, Off
    }
    Else
        SetTimer, SendTheKeyK, Off
Return

SendTheKeyK:
    SendInput, k
Return

; Right Shift for toggle input method
RShift::
    KeyWait, RShift
    If (A_TimeSinceThisHotkey < 200)
        Send, #{Space}
Return
