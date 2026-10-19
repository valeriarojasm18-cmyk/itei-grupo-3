#!/bin/zsh
# Publica automáticamente en GitHub los cambios de esta carpeta.
# Se ejecuta cada minuto mediante el LaunchAgent com.valeria.itei-publicar.
# También se puede ejecutar a mano:  ./publicar.sh

set -u

REPO="/Users/valeria/Desktop/Itei-grupo-3"
LOG="$HOME/Library/Logs/itei-publicar.log"
LOCK="/tmp/itei-publicar.lock"

# Evita dos ejecuciones a la vez.
if ! mkdir "$LOCK" 2>/dev/null; then
  exit 0
fi
trap 'rmdir "$LOCK" 2>/dev/null' EXIT

cd "$REPO" || {
  echo "$(date '+%F %T') ERROR: no se encontró la carpeta del proyecto" >> "$LOG"
  exit 1
}

{
  dirty=$(git status --porcelain)
  # Archivos guardados en los últimos 2 minutos: esperamos a que termine de guardar.
  recent=$(find . -path ./.git -prune -o -type f -mmin -2 -print -quit)

  if [[ -n "$dirty" && -z "$recent" ]]; then
    git add -A
    if git commit -m "Actualización automática — $(date '+%Y-%m-%d %H:%M')" --quiet; then
      echo "$(date '+%F %T') Commit creado con los cambios."
    fi
  elif [[ -n "$dirty" ]]; then
    echo "$(date '+%F %T') Cambios recientes, esperando a que se terminen de guardar."
  fi

  # Sube también cualquier commit que haya quedado pendiente (por ejemplo, sin internet).
  if [[ -n "$(git rev-list '@{u}..HEAD' 2>/dev/null)" ]]; then
    if git push origin main --quiet; then
      echo "$(date '+%F %T') Cambios subidos a GitHub."
    else
      echo "$(date '+%F %T') ERROR al subir; se reintentará en el próximo minuto."
    fi
  fi
} >> "$LOG" 2>&1
