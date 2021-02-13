# Colored ls output with Get-ChildItemColor
If (-Not (Test-Path Variable:PSise)) {  # Only run this in the console and not in the ISE
    Import-Module Get-ChildItemColor

    Set-Alias l Get-ChildItem -option AllScope
    Set-Alias ls Get-ChildItemColorFormatWide -option AllScope
}


# Helpers

# Quick Access Most use directories
function db {
  set-location "C:\Users\jerem\Dropbox"
}

function dc {
  set-location "C:\Users\jerem\Documents"
}

function dots {
  set-location "C:\Users\jerem\Documents\dots-win"
}

Function ho {
   set-location "C:\Users\jerem"
}

# Php / Mysql Locations
function xa {
  set-location "C:\xampp"
}

function ht {
  set-location "C:\xampp\htdocs"
}

function pg {
  set-location "C:\Prog"
}

function config {
  code "C:\Program Files\PowerShell\7-preview"
}

# Touch like alias
function touch {
  set-content -Path ($args[0]) -Value ($null)
}

function install() {
  choco install -y $args
}
