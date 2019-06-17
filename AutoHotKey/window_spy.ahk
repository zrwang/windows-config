#1:: ; press WIN+1 will copy the ahk_class of the Active Window to clipboard
WinGetClass, Class, A
MsgBox, `n%Class%
return

#2:: ; press WIN+2 will copy the ahk_title of the Active Window to clipboard
WinGetTitle, Title, A
MsgBox, `n%Title%
return

#3:: ; press WIN+3 will detect if Overleaf Window is active
WinGetTitle, Title, A
FoundPos := RegExMatch(Title, "Overleaf")
If FoundPos != 0
	MsgBox Overleaf is on.
return