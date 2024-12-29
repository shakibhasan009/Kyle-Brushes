#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Compression=4
#AutoIt3Wrapper_UseUpx=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

; Base URL
Global $sBaseURL = "https://download.adobe.com/pub/adobe/photoshop/brushes/"

; Create an array of file names
Global $aFiles[33] = ["Spring-Brushes-2024.abr", "megapack.abr", "watercolor.abr", "dry_media.abr", "gouache.abr", "spatter_brushes.abr", _
    "runny_inkers.abr", "manga.abr", "crosshatch.abr", "rakes.abr", "impressionist.abr", "letterers.abr", "halftones_and_screentones.abr", _
    "copier.abr", "concept.abr", "art_markers.abr", "Charcoal.abr", "summer-brushes-2018.abr", "spring-2020-update.abr", "summer-2020-update.abr", _
    "winter-2020.abr", "spring-brushes-2021.abr", "Summer2021.abr", "Fall-2021.abr", "Winter-2022.abr", "Spring-2022.abr", "Summer-2022.abr", _
    "Fall-2022.abr", "Winter-2023.abr", "Spring-2023-Brushes.abr", "Summer-Brushes-2023.abr", "Fall-Brushes-2023.abr", "Winter-Brushes-2024.abr"]

$iPing = Ping("www.google.com")
If not $iPing Then MsgBox(16, "Internet is needed to download all Photoshop Brushes.", "Internet is not connected.")

If $iPing Then $Question = MsgBox(33, "Internet is connected.", "It will require 1.55GB of data.")
If $Question = 2 Then
	Exit
Else
$sDir = @DesktopDir & "\Photoshop Exclusive brushes from Kyle T. Webster\"
If FileExists($sDir) Then DirRemove($sDir)
DirCreate($sDir)

; Download each file with a tooltip
For $i = 0 To UBound($aFiles) - 1
    ToolTip("Downloading " & $aFiles[$i] & "..."& @CRLF &"Please Wait....", 5, 5, "Downloading Brushes")
    InetGet($sBaseURL & $aFiles[$i], $sDir & $aFiles[$i])
Next
EndIf


