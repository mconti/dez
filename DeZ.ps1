[CmdletBinding()]
[OutputType("Void")]
param( [string]$FILTER )

#$elencoFile = Get-ChildItem -Path . -Filter (".zip")
#$elencoFile = Get-ChildItem

# crea un elenco di tutti i file nella cartella
$elencoFile = Get-ChildItem -Path . -Filter ($FILTER)

# se li passa uno a uno...
#foreach( $file in $elencoFile )
#{
#    # visualizza il file da decomprimere
#    $file

    # lo decomprime
#    Expand-Archive $file  -Force
#}

# crea un elenco di tutte le cartelle obj, 
# entrando anche nelle sottocartelle (parametro -Recurse)
# e lo usa per rimuoverle
#$elencoFile = Get-ChildItem -Path . -Filter ("obj") -Recurse
#foreach( $file in $elencoFile )
#{
#    $file
#    Remove-Item $file -Force -Recurse
#}

# crea un elenco di tutte le cartelle bin, 
# entrando anche nelle sottocartelle (parametro -Recurse)
# e lo usa per rimuoverle
#$elencoFile = Get-ChildItem -Path . -Filter ("bin") -Recurse
#foreach( $file in $elencoFile )
#{
#    $file
#    Remove-Item $file -Force -Recurse
#}

$result="code "
$elencoFile = Get-ChildItem -Path . -Filter ("MainPage.xaml.cs") -Recurse
foreach( $file in $elencoFile )
{
    $result = $result + $file + " "
}

$result = $result + "read.me"

Invoke-Expression $result
#code C:\Users\posta\Desktop\ImageLayout\Busi.Alessandro.4h.imagelayout\Busi.Alessandro.4h.imagelayout\App1\App1\App1\MainPage.xaml.cs, C:\Users\posta\Desktop\ImageLayout\Busi.Alessandro.4h.imagelayout\Busi.Alessandro.4h.imagelayout\App1\App1\App1\MainPage.xaml.cs
# code C:\Users\posta\Desktop\ImageLayout\Zaghini.Mattia.4H.ImageLayout\Zaghini.Mattia.4H.ImageLayout\Zaghini.Mattia.4H.ImageLayout\Zaghini.Mattia.4H.ImageLayout.UWP\MainPage.xaml.cs