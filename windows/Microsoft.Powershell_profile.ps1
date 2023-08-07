$Env:KOMOREBI_CONFIG_HOME = 'C:\Users\LGUG2Z\.config\komorebi'

function tile 
{
    komorebic start -c $Env:USERPROFILE\komorebi.json --whkd

    Start-Job -Name TileBar -ScriptBlock {
        & pythonw $Env:USERPROFILE\tools\yasb\src\main.py > console.err
    }
    
}