# Das Script Löscht Dateien im Scanner Ordner welche älter als 30 Tage alt sind. 
# V 1.0
# Julian Brügger, 24.05.2019
Get-ChildItem –Path "G:\scanner" -Recurse | Where-Object {($_.LastWriteTime -lt (Get-Date).AddDays(-30))} | Remove-Item
