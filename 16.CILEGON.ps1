<#
#=========================================================================== 
# Script: GPSync-BPKB.ps1  
# Created With:ISE 3.0  
# Author: Gus Putra Ismaulana 
# Date: 11/17/2020 15:04:50  
# Organization:  ITD
# File Name: Sync BPKB Files to GCP
# Comments:  
#===========================================================================      
#> 

$branch	     = "CILEGON"
$source      = "\\CLGDSFNBLGL002.corp.dipostar.com\c$\Users\Shinta Fitria\Desktop\BPKB - 16 CILEGON"
$dest        = "D:\BPKB\BPKB - 16 CILEGON"
$date        = Get-Date -UFormat "%Y%m%d-%s"
$Logfile     = "D:\SYNCLOG\$branch-$date.txt"
$what        = @("/MOV","/FFT","/Z","/E")
$options     = @("/R:3","/W:10","/NP","/NDL","/LOG:$logfile")
$cmdArgs     = @("$source","$dest",$what,$options) 

## Kick off the copy with options defined 
robocopy @cmdArgs