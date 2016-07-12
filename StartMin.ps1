# 
# Author: Joseph McConville
# Website: http://www.lionheartservices.co.uk
# Created: 2015-16-02
# Modified: 2015-16-02
# Script: Minimize Me
# Version: 1.0
# Description: A quick PowerShell script for starting program in a minimized state.
# 

[CmdletBinding()]
param(
[string]$program
)

$psVersion = Get-Host | select version

function startProgram() {
	cmd.exe /c start /b /min $program
}

if ($psVersion -Like "*2*") {
	startProgram
}
if ($psVersion -Like "*1*") {
	startProgram
}