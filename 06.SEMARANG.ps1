﻿<#
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

$branch	     = "SEMARANG"
#$source      = "\\SMGDSFPCLGL003\c$\Users\widya kurnila\Desktop\BPKB - 06 SEMARANG"
$source      = "\\SMGDSFPCLGL003\d$\BPKB-06 SEMARANG"
$dest        = "D:\BPKB\BPKB - 06 Semarang"
$date        = Get-Date -UFormat "%Y%m%d-%s"
$Logfile     = "D:\SYNCLOG\$branch-$date.txt"
$what        = @("/MOV","/FFT","/Z","/E")
$options     = @("/R:3","/W:10","/NP","/NDL","/LOG:$logfile")
$cmdArgs     = @("$source","$dest",$what,$options) 

## Kick off the copy with options defined 
robocopy @cmdArgs