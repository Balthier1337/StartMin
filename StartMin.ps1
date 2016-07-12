# 
# Author: Joseph McConville
# Website: http://www.lionheartservices.co.uk
# Created: 2015-02-16
# Modified: 2015-02-18
# Script: Minimize Me
# Version: 2.0
# Description: A quick PowerShell script for starting program in a minimized state.

[CmdletBinding()]
param(
[switch]$help
[string]$program
[string]$wait
)

if ($help) {
	echo "Accepted parameters:"
	echo "-help"
	echo "Displays current help screen"
	echo "-program <Program>"
	echo "Specifies the program to launch"
	echo "-wait <Number>"
	echo "Specifies the time period, in seconds, for the program to wait before launching"
	Break
}

if ($wait) {
	Start-Sleep -s $wait
}
if ($program) {
	cmd.exe /c start /b /min $program
}
