$Resize:On
$Resize:Stretch
Screen 13
Dim Type$
Dim Shared Frequency%
Dim Shared Amplitude%
Dim Shared Offset%
Dim Shared Colour%
Dim Delay#

Print "GRAPH.bas"
While 1
    Input "Type (sin, tan, cos): ", Type$
    If Type$ = "sin" Or Type$ = "tan" Or Type$ = "cos" Then
        Exit While
    End If
Wend
Input "Frequency: ", Frequency%
Input "Amplitude: ", Amplitude%
Input "Offset: ", Offset%
Input "Colour (0-15): ", Colour%
Input "Delay (secs): ", Delay#
Cls
_Display


For I = 0 To 12
    Line (0, (16 * I) + 4)-(320, (16 * I) + 4), 8
Next I
For I = 1 To 20
    Line (16 * I, 0)-(16 * I, 200), 8
Next I

Line (0, 100)-(320, 100), 15
Line (160, 0)-(160, 200), 15

For I = 0 To 320
    If Type$ = "sin" Then PSet (I, ((Sin(I / Frequency%)) * Amplitude%) + Offset%), Colour%
    If Type$ = "tan" Then PSet (I, ((Tan(I / Frequency%)) * Amplitude%) + Offset%), Colour%
    If Type$ = "cos" Then PSet (I, ((Cos(I / Frequency%)) * Amplitude%) + Offset%), Colour%
    _Display
    _Delay Delay#
Next I
_Delay 3


