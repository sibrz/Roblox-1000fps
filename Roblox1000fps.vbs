Set shell = CreateObject("WScript.Shell")
utilisateur = shell.ExpandEnvironmentStrings("%USERNAME%")


dossier = "C:\Users\" & utilisateur & "\AppData\Local\Roblox\ClientSettings"
nomFichier = "ClientAppSettings.json"
cheminFichier = dossier & "\" & nomFichier


Set fso = CreateObject("Scripting.FileSystemObject")
If Not fso.FolderExists(dossier) Then
    fso.CreateFolder(dossier)
End If


contenuJson = "{" & vbCrLf & _
              "  ""DFIntDefaultFpsCap"": 1000" & vbCrLf & _
              "}"


Set fichier = fso.CreateTextFile(cheminFichier, True)
fichier.Write contenuJson
fichier.Close


MsgBox "injection successful"