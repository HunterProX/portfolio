# Automatización - Portfolio y Búsqueda de Clientes

## 📋 Resumen

Este directorio contiene la configuración de automatización para:
- Búsqueda de clientes freelance (Upwork MCP)
- Networking y búsqueda de empleo (LinkedIn MCP)
- Content marketing (artículos técnicos)
- Métricas y seguimiento

## 🚀 Inicio Rápido

### 1. Instalar MCP Servers
```powershell
# Ejecutar como Administrador
.\setup-mcp.ps1
```

### 2. Configurar Credenciales
Edita `mcp-config.json` con tus tokens/cookies:
- Upwork API Key/Secret
- LinkedIn Email/Password
- GitHub Token

### 3. Probar Conexión
```bash
# Probar Upwork MCP
npx @chinchillaenterprises/mcp-upwork test-connection

# Probar LinkedIn MCP
npx @luminarylane/linkedin-mcp-server test-connection
```

## 📁 Estructura

```
automation/
├── mcp-config.json      # Configuración de MCPs
├── setup-mcp.ps1        # Script de instalación
├── workflows.md         # Documentación de workflows
└── README.md            # Este archivo
```

## 🔧 MCP Servers Instalados

| MCP Server | Paquete | Función |
|---|---|---|
| **Upwork** | `@chinchillaenterprises/mcp-upwork` | Búsqueda de jobs, propuestas, contratos |
| **LinkedIn** | `@luminarylane/linkedin-mcp-server` | Networking, mensajes, jobs |

## 📊 Workflows Automatizados

### Upwork (Diario)
1. Buscar 10-20 jobs que match con tu stack
2. Filtrar por budget > $50/hr, rating > 4.5
3. Generar propuestas personalizadas
4. Enviar 5-10 propuestas/día
5. Follow-up en 48h

### LinkedIn (Diario)
1. Buscar 50-100 conexiones relevantes
2. Enviar invitaciones personalizadas
3. Enviar mensajes a conexiones existentes
4. Buscar jobs remote
5. Aplicar a 5-10 empleos/día

### Content Marketing (Semanal)
1. Investigar tema trending
2. Escribir borrador
3. Revisar y editar
4. Publicar en LinkedIn + Dev.to
5. Promocionar en redes sociales

## 📈 Métricas de Éxito

| Métrica | Meta Semanal | Meta Mensual |
|---|---|---|
| Propuestas Upwork | 25-50 | 100-200 |
| Conexiones LinkedIn | 50-100 | 200-400 |
| Mensajes enviados | 20-30 | 80-120 |
| Artículos publicados | 1 | 4 |
| Empleos aplicados | 10-20 | 40-80 |

## 🔗 Recursos

- [Upwork MCP Docs](https://github.com/chinchillaenterprises/mcp-upwork)
- [LinkedIn MCP Docs](https://github.com/luminarylane/linkedin-mcp-server)
- [GitHub Readme Stats](https://github.com/anuraghazra/github-readme-stats)
- [Vercel](https://vercel.com)
- [Railway](https://railway.app)

## 📞 Soporte

Si tienes problemas con la configuración:
1. Verifica que Node.js esté instalado
2. Revisa que los tokens sean válidos
3. Consulta la documentación de cada MCP
