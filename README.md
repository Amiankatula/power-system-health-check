# System Health Check Script

## What This Project Does
A PowerShell script that automatically checks the health of a Windows computer and displays a report showing:
- Disk space usage
- RAM usage
- Top 10 running services

## Why I Built This
As an IT support professional, one of the most common tasks is quickly checking
the health of a machine when a user reports slowness or issues.
This script automates that process - instead of clicking through multiple
menus, you run one script and get an instant report.

## Real World Findings From My Own Machine
When I ran this script on my own PC, it revealed:
- Disk usage at **342 GB used** with only **35 GB free** - a storage alert
- RAM at **83% usage** - high memory consumption flagged

These are exactly the kinds of findings an IT support person would
report and act on in a real helpdesk environment.

## How To Use It
1. Open PowerShell
2. Navigate to the folder containing the script
3. Run: .\SystemHealthCheck.ps1

## Sample Output
=====================================
       SYSTEM HEALTH REPORT
=====================================
DISK SPACE:
  Used  : 342.4 GB
  Free  : 35.39 GB

RAM USAGE:
  Total : 7.69 GB
  Used  : 6.36 GB
  Free  : 1.33 GB

IMPORTANT RUNNING SERVICES:
  - Windows Audio
  - Windows Defender
=====================================

## Skills Demonstrated
- PowerShell scripting
- Windows system administration
- IT troubleshooting and diagnostics
- Documentation and reporting

## Author
Amiankatula - IT Support Professional
GitHub: https://github.com/Amiankatula
