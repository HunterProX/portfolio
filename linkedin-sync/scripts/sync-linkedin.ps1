# LinkedIn Sync Script
# Detecta cambios en GitHub y sincroniza con LinkedIn

param(
    [string]$ProfilePath = "C:\Users\CARDONA\Desktop\personal\portfolio\linkedin-sync\profile.json",
    [string]$ChangesPath = "C:\Users\CARDONA\Desktop\personal\portfolio\linkedin-sync\changes.json",
    [string]$MetricsPath = "C:\Users\CARDONA\Desktop\personal\portfolio\linkedin-sync\metrics.json",
    [string]$LogPath = "C:\Users\CARDONA\Desktop\personal\portfolio\linkedin-sync\sync-log.md"
)

Write-Host "=== LinkedIn Sync Script ===" -ForegroundColor Cyan
Write-Host ""

# 1. Cargar archivos
Write-Host "[1/5] Cargando archivos..." -ForegroundColor Yellow
$profile = Get-Content $ProfilePath -Raw | ConvertFrom-Json
$changes = Get-Content $ChangesPath -Raw | ConvertFrom-Json
$metrics = Get-Content $MetricsPath -Raw | ConvertFrom-Json

# 2. Detectar cambios pendientes
Write-Host "[2/5] Detectando cambios pendientes..." -ForegroundColor Yellow
$pendingChanges = $changes.pending_changes | Where-Object { $_.status -eq "pending" }
Write-Host "  Cambios pendientes: $($pendingChanges.Count)" -ForegroundColor Green

if ($pendingChanges.Count -eq 0) {
    Write-Host "  No hay cambios pendientes. Sincronización completada." -ForegroundColor Green
    exit 0
}

# 3. Mostrar cambios
Write-Host "[3/5] Cambios a sincronizar:" -ForegroundColor Yellow
foreach ($change in $pendingChanges) {
    Write-Host "  [$($change.priority)] $($change.type): $($change.field)" -ForegroundColor White
}

# 4. Actualizar perfil LinkedIn (manual por ahora)
Write-Host "[4/5] Actualizando perfil LinkedIn..." -ForegroundColor Yellow
Write-Host "  NOTA: La actualización automática requiere LinkedIn MCP" -ForegroundColor Yellow
Write-Host "  Los cambios están listos para aplicar manualmente" -ForegroundColor Green

# 5. Registrar en log
Write-Host "[5/5] Registrando en log..." -ForegroundColor Yellow
$logEntry = @"

### $(Get-Date -Format "yyyy-MM-dd HH:mm UTC")
- **Trigger:** Script automático
- **Cambios detectados:** $($pendingChanges.Count)
- **Estado:** Pendiente de aplicación manual
- **Cambios:**
"@

foreach ($change in $pendingChanges) {
    $logEntry += "`n  - [$($change.priority)] $($change.type): $($change.field)"
}

Add-Content -Path $LogPath -Value $logEntry

Write-Host ""
Write-Host "=== Sincronización Completada ===" -ForegroundColor Cyan
Write-Host "Cambios pendientes: $($pendingChanges.Count)" -ForegroundColor Green
Write-Host "Revisa: $ChangesPath" -ForegroundColor Yellow
