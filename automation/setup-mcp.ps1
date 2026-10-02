# Setup MCP Servers para Portfolio
# Ejecutar como Administrador

Write-Host "=== Setup MCP Servers ===" -ForegroundColor Green

# 1. Verificar Node.js
Write-Host "`n[1/5] Verificando Node.js..." -ForegroundColor Cyan
$nodeVersion = node --version
$npmVersion = npm --version
Write-Host "Node.js: $nodeVersion" -ForegroundColor Green
Write-Host "npm: $npmVersion" -ForegroundColor Green

# 2. Instalar MCP Servers
Write-Host "`n[2/5] Instalando MCP Servers..." -ForegroundColor Cyan
npm install -g @chinchillaenterprises/mcp-upwork @luminarylane/linkedin-mcp-server

# 3. Verificar instalación
Write-Host "`n[3/5] Verificando instalación..." -ForegroundColor Cyan
$npxVersion = npx --version
Write-Host "npx: $npxVersion" -ForegroundColor Green

# 4. Crear estructura de directorios
Write-Host "`n[4/5] Creando estructura de directorios..." -ForegroundColor Cyan
$dirs = @(
    "C:\Users\CARDONA\Desktop\personal\portfolio\projects",
    "C:\Users\CARDONA\Desktop\personal\portfolio\profiles",
    "C:\Users\CARDONA\Desktop\personal\portfolio\content",
    "C:\Users\CARDONA\Desktop\personal\portfolio\automation"
)
foreach ($dir in $dirs) {
    if (!(Test-Path $dir)) {
        New-Item -ItemType Directory -Path $dir -Force | Out-Null
        Write-Host "Creado: $dir" -ForegroundColor Green
    } else {
        Write-Host "Existe: $dir" -ForegroundColor Yellow
    }
}

# 5. Instrucciones para tokens
Write-Host "`n[5/5] Configuración de tokens..." -ForegroundColor Cyan
Write-Host @"

=== SIGUIENTE PASO: Configurar Tokens ===

Para usar los MCPs, necesitas proporcionar tus credenciales:

1. UPWORK:
   - Ve a: https://www.upwork.com/developers/apps
   - Crea una app para obtener API Key y Secret
   - O usa el MCP alternativo: @furkankoykiran/upwork-mcp

2. LINKEDIN:
   - Necesitas tu email y contraseña de LinkedIn
   - O usa un token de sesión (cookie)

3. GITHUB:
   - Ve a: https://github.com/settings/tokens
   - Crea un token con permisos de repo y user

Edita el archivo: C:\Users\CARDONA\Desktop\personal\portfolio\automation\mcp-config.json
Y reemplaza los valores YOUR_* con tus credenciales reales.

"@ -ForegroundColor Yellow

Write-Host "`n=== Setup Completado ===" -ForegroundColor Green
