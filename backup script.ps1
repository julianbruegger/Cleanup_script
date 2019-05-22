#Backup erstellen
Copy-Item 'G:\scanner\*' 'C:\backup\pfad\Backup'
#Nun werden alle Daten älter als 30-Tage gelöscht
Get-ChildItem –Path "G:\scanner" -Recurse | Where-Object {($_.LastWriteTime -lt (Get-Date).AddDays(-30))} | Remove-Item