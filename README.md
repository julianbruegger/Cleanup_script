# Cleanup_shell
Ein Powershellscript für die ICT-BZ welches dateien welche Älter als 30 Tage sind, löscht.

## Anwendung
Das script soll dateien im scanner ordner löschen. 

Pfad: ```G:\scanner```

## Script
```powershell
Get-ChildItem –Path "C:\path\to\folder"-Recurse | Where-Object {($_.LastWriteTime -lt (Get-Date).AddDays(-30))} | Remove-Item 
```
### Pfad anpassen
```powershell
-Path "C:\your\path"
```
### In wievielen Tagen
```powershell
(Get-Date).AddDays(-30)
```
### Was Passiert
```powershell
| Remove-Item
    options: 
    Remove-Item
        [-Path] <String[]>
        [-Filter <String>]
        [-Include <String[]>]
        [-Exclude <String[]>]
        [-Recurse]
        [-Force]
        [-Credential <PSCredential>]
        [-WhatIf]
        [-Confirm]
        [-Stream <String[]>]
        [<CommonParameters>]
 ```
### Example