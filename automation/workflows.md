# Automatización - Workflows

## Upwork MCP Workflow

### Búsqueda de Jobs (Diario)
```bash
# Buscar jobs que match con tu stack
mcp-upwork search-jobs --query "React Node AI" --min-budget 5000 --limit 20

# Filtrar por:
# - Budget > $50/hr
# - Client rating > 4.5
# - Payment verified
# - Posted in last 7 days
```

### Generación de Propuestas (Diario)
```bash
# Generar propuesta personalizada
mcp-upwork create-proposal \
  --job-id "12345" \
  --proposal-text "I have 7+ years of experience..." \
  --rate 100 \
  --duration "4 weeks"
```

### Seguimiento (Semanal)
```bash
# Follow-up a clientes que no responden
mcp-upwork send-message --client-id "67890" --message "Just checking in..."
```

---

## LinkedIn MCP Workflow

### Búsqueda de Conexiones (Diario)
```bash
# Buscar reclutadores y hiring managers
mcp-linkedin search-people --query "hiring manager remote" --limit 20

# Buscar empresas target
mcp-linkedin search-companies --query "remote-first startup" --limit 10
```

### Outreach (Diario)
```bash
# Enviar conexión personalizada
mcp-linkedin send-invitation \
  --profile-id "abc123" \
  --message "Hi [Name], I'm a Senior Full Stack Developer..."

# Enviar mensaje a conexión existente
mcp-linkedin send-message \
  --profile-id "def456" \
  --message "Hi [Name], I'd love to connect about..."
```

### Búsqueda de Jobs (Diario)
```bash
# Buscar jobs remote
mcp-linkedin search-jobs --query "senior full stack remote" --location "United States" --limit 20

# Filtrar por:
# - Remote
# - Salary > $100k
# - Posted in last 7 days
```

---

## Content Marketing Workflow

### Semanal
1. **Lunes**: Investigar tema trending
2. **Martes**: Escribir borrador
3. **Miércoles**: Revisar y editar
4. **Jueves**: Publicar en LinkedIn + Dev.to
5. **Viernes**: Promocionar en redes sociales

### Herramientas
- **Grammarly**: Revisión de gramática
- **Hemingway Editor**: Claridad
- **Canva**: Imágenes para artículos
- **Buffer**: Programación de posts

---

## Métricas de Automatización

| Métrica | Meta Semanal | Meta Mensual |
|---|---|---|
| Propuestas Upwork enviadas | 25-50 | 100-200 |
| Conexiones LinkedIn | 50-100 | 200-400 |
| Mensajes enviados | 20-30 | 80-120 |
| Artículos publicados | 1 | 4 |
| Empleos aplicados | 10-20 | 40-80 |
