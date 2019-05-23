# Cleanup Script 
Ein Powershellscript für die ICT-BZ welches Dateien welche Älter als 30 Tage sind, löscht.


![alt text][logo]

[logo]: https://www.ict-bz.ch/themes/ict-bz/assets/ICT-BZ_Logo_Google.png "ICT-BZ"


## Anwendung
Das Script soll Dateien im Scanner Ordner löschen welche älter als 30 Tage alt sind. 

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
Vom heutigen da
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
```powershell
| Remove-Item -include .PDF
 ```
 Nun werden nur .PDF Dateien entfernt. 

 ##Child-Item
 ```powershell
 | Get-ChildItem -Path C:\Users\Julian\Donload -Recurse
    options: 
    Get-ChildItem
        [-Path] Sucht im nachfolgenden Pfad
        [-Recurse] Durchsucht auch unterordner. 
  ```

#Backup davon erstellen
```powershell
| Copy-Item 'G:\scanner\*' 'C:\backup\pfad\Backup'

```

Mit diesem Befehl wird ein backup des Ordners in ein Wunschverzeichnis erstellt. 