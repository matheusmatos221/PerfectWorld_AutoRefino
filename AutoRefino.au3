ConsoleWrite("Starting" & @CRLF)
;---------------------------------------------------------------------------------------------------------
;Script
;Author: Matheus Matos
;E-mail: matheusmatos.221@hotmail.com

;About me
;This is a script to BOT on Perfect World Game.

#RequireAdmin
#include <ImageSearch2015.au3>

While True
   ConsoleWrite("WAIT")
   sleep(200)
WEnd

HotKeySet("p", "checkForImage")

global $y = 0, $x = 0

ConsoleWrite("Variáveis declaradas" & @CRLF)

Func checkForImage()
Local $search = _ImageSearch('refino.png', 0, $x, $y, 0)
If $search = 1 Then
   ConsoleWrite("FIND" & @CRLF)
   MouseMove($x, $y, 10)
Else
   ConsoleWrite("NOT FIND" & @CRLF)
EndIf
EndFunc

While True
   ConsoleWrite("WAIT")
   sleep(200)
WEnd