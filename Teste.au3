ConsoleWrite("Starting" & @CRLF)
#RequireAdmin
ConsoleWrite("Running with Admin Privileges" & @CRLF)
#include <ImageSearch2015.au3>
ConsoleWrite("Include ImageSearch2015" & @CRLF)
HotKeySet("p", "checkForImage")
ConsoleWrite("Declares HotKey" & @CRLF)
global $y = 0, $x = 0
ConsoleWrite("Declares Global" & @CRLF)

Func checkForImage()
   Local $search = _ImageSearch('checkImage.bmp', 0, $x, $y, 0)
   If $search = 1 Then
	  MouseMove($x, $y, 10)
   EndIf
EndFunc

While True
   Call "checkForImage"
   ConsoleWrite("Running Script" & @CRLF)
   sleep(200)
WEnd