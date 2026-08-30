# Deployment Workflow MMFI1

## Configuración Vercel

- **Output Directory**: `_build/html` 
- **Build Command**: `pnpm run vercel-build`
- **Install Command**: `pnpm install`
- **Script personalizado**: `myst build --html && cp -r _build/html/* .`

## URLs de deployment

### Producción
- **URL principal**: https://mmfi-1.vercel.app
- **Automático**: Cada push a `main` (se despliega a producción con `vercel --prod`)

## Flujo de trabajo recomendado

### Desarrollo en main
```bash
git checkout main
# ... hacer cambios ...
git add .
git commit -m "Descripción del cambio"
git push origin main

# Desplegar a producción
vercel --prod
```

### Nueva versión (tag)
```bash
# Cuando se complete una versión del curso
git tag -a v2026.1 -m "Versión 2026.1 del curso"
git push origin v2026.1

# Crear rama de versión archivada
git checkout -b release/2025 v2025.1
git push origin release/2025
```

### Consultar versión archivada
```bash
git checkout release/2025
vercel  # Genera preview deployment
# URL: https://mmfi-1-git-release-2025-gerardo-s-projects-0ef7eb80.vercel.app
```

## Estrategia de versiones

- **main**: Versión actual en desarrollo (2026)
- **release/2025**: Versión archivada sin mantenimiento
- **Tags**: Puntos de release específicos (v2025.1, v2026.0, etc.)
- **Preview deployments**: Para testing y referencias archivadas

## Resolución de problemas

### Preview 404
- Verificar que `package.json` tiene el script `vercel-build` correcto
- Confirmar que `_build/html/` contiene los archivos generados
- Usar `vercel --force` para rebuild sin caché

### Build errors
- `pnpm install` para actualizar dependencias
- `pnpm run vercel-build` para probar build localmente
- Verificar que `mystmd` está instalado correctamente

## Protecciones Vercel

- **SSO Protection**: Deshabilitado para acceso público
- **Git Fork Protection**: Habilitado (evita deployments no autorizados)