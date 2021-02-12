# Location ProgramFiles\PowerShell\7-preview

If (-Not (Test-Path Variable:PSise)) {  # Only run this in the console and not in the ISE
    Import-Module Get-ChildItemColor

    Set-Alias l Get-ChildItem -option AllScope
    Set-Alias ls Get-ChildItemColorFormatWide -option AllScope
}

Function h() {
   cd ~/
}

function xa { set-location C:\xampp }
function ht { set-location C:\xampp\htdocs }
function ho { set-location C:\user\jerem }
function db { set-location C:\Users\jerem\Dropbox }
function docs { set-location C:\Users\jerem\Documents }
function touch {set-content -Path ($args[0]) -Value ($null)} 

function install() {
  choco install -y $args
}
