Add-Type -AssemblyName System.Windows.Forms
$Result = [System.Windows.Forms.MessageBox]::Show("Moechten Sie ein Backup erstellen?","Wichtig!",4)
 
If ($Result -eq "Yes")
{
   #Backup erstellen
   Get-ChildItem –Path "G:\scanner" -Recurse | Where-Object {($_.LastWriteTime -lt (Get-Date).AddDays(-30))} |Copy-Item 'G:\scanner\*' 'C:\Temp\Backup'
}
else
{
    #Nun werden alle Daten älter als 30-Tage gelöscht
Get-ChildItem –Path "G:\scanner" -Recurse | Where-Object {($_.LastWriteTime -lt (Get-Date).AddDays(-30))} | Remove-Item
}

