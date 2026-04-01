# ============================================
# System Health Check Script
# Author: Amiankatula
# Description: Checks disk, RAM, and services
# ============================================

Write-Host "=====================================" -ForegroundColor Cyan
Write-Host "       SYSTEM HEALTH REPORT          " -ForegroundColor Cyan
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host ""

# --- DISK SPACE CHECK ---
Write-Host "DISK SPACE:" -ForegroundColor Yellow
$disk = Get-PSDrive C
$freeGB = [math]::Round($disk.Free / 1GB, 2)
$usedGB = [math]::Round($disk.Used / 1GB, 2)
Write-Host "  Used  : $usedGB GB"
Write-Host "  Free  : $freeGB GB"
Write-Host ""

# --- RAM USAGE CHECK ---
Write-Host "RAM USAGE:" -ForegroundColor Yellow
$ram = Get-CimInstance Win32_OperatingSystem
$totalRAM = [math]::Round($ram.TotalVisibleMemorySize / 1MB, 2)
$freeRAM = [math]::Round($ram.FreePhysicalMemory / 1MB, 2)
$usedRAM = [math]::Round($totalRAM - $freeRAM, 2)
Write-Host "  Total : $totalRAM GB"
Write-Host "  Used  : $usedRAM GB"
Write-Host "  Free  : $freeRAM GB"
Write-Host ""

# --- RUNNING SERVICES CHECK ---
Write-Host "IMPORTANT RUNNING SERVICES:" -ForegroundColor Yellow
$services = Get-Service | Where-Object {$_.Status -eq "Running"} | Select-Object -First 10
foreach ($service in $services) {
    Write-Host "  - $($service.DisplayName)"
}

Write-Host ""
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host "         END OF REPORT               " -ForegroundColor Cyan
Write-Host "=====================================" -ForegroundColor Cyan