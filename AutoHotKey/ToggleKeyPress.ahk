!+j::
    RepeatKeyJ := !RepeatKeyJ
    If RepeatKeyJ {
        SetTimer, SendTheKeyJ, 5000	; The "2000" here is the number of milliseconds between repeats.
        SetTimer, SendTheKeyK, Off
    }
    Else
        SetTimer, SendTheKeyJ, Off
Return

SendTheKeyJ:
    SendInput, j
Return

!+k::
    RepeatKeyK := !RepeatKeyK
    If RepeatKeyK {
        SetTimer, SendTheKeyK, 5000	; The "2000" here is the number of milliseconds between repeats.
        SetTimer, SendTheKeyJ, Off
    }
    Else
        SetTimer, SendTheKeyK, Off
Return

SendTheKeyK:
    SendInput, k
Return