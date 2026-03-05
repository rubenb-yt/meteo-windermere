#!/bin/bash
# ══════════════════════════════════════════════════
#  Windermere Meteo — Setup automatico GitHub Pages
# ══════════════════════════════════════════════════
#
#  PRIMA di eseguire questo script:
#  1. Vai su https://github.com/new
#  2. Crea un repo chiamato "meteo-windermere" (o come vuoi)
#  3. Lascialo VUOTO (niente README, .gitignore, ecc.)
#  4. Esegui questo script dalla cartella gh-repo/
#
#  USO:
#    cd gh-repo
#    chmod +x setup.sh
#    ./setup.sh
#
# ══════════════════════════════════════════════════

USERNAME=${1:-"rubenb-yt"}
REPO=${2:-"meteo-windermere"}

echo "🌦️  Windermere Meteo — Setup GitHub Pages"
echo "   Repo: github.com/$USERNAME/$REPO"
echo ""

# Init git
git init
git branch -M main
git add -A
git commit -m "🌦️ Windermere Meteo Live — dashboard multi-modello PWA"

# Add remote and push
git remote add origin "https://github.com/$USERNAME/$REPO.git"
git push -u origin main

echo ""
echo "✅ Push completato!"
echo ""
echo "Ora attiva GitHub Pages:"
echo "  1. Vai su https://github.com/$USERNAME/$REPO/settings/pages"
echo "  2. Source → seleziona 'GitHub Actions'"
echo "  3. Attendi 1-2 minuti per il deploy"
echo ""
echo "Il tuo URL sarà:"
echo "  🔗 https://$USERNAME.github.io/$REPO/"
echo ""
echo "Per iPhone:"
echo "  📱 Apri l'URL su Safari → Condividi → Aggiungi alla schermata Home"
