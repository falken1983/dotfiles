#!/bin/bash

echo "🚀 Optimizando respuesta del sistema..."

# 1. Desactivar animaciones al abrir y cerrar ventanas
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# 2. Desactivar animaciones al abrir una aplicación desde el Dock
defaults write com.apple.dock launchanim -bool false

# 3. Acelerar el despliegue del Dock (si lo tienes oculto)
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0.15

# 4. Desactivar el efecto 'Genio' al minimizar ventanas (cambia a escala, que es más rápido)
defaults write com.apple.dock mineffect -string "scale"

# 5. Reducir la transparencia en todo el sistema (Ahorra GPU/RAM)
# Requiere reiniciar sesión para notar el cambio total
defaults write com.apple.universalaccess reduceTransparency -bool true

# 6. Desactivar animaciones de Mail (si lo usas)
defaults write com.apple.mail DisableReplyAnimations -bool true
defaults write com.apple.mail DisableSendAnimations -bool true

# 7. Desactivar el retraso al mostrar la barra de herramientas en pantalla completa
defaults write NSGlobalDomain NSToolbarFullScreenAnimationDuration -float 0

# Reiniciar componentes afectados
killall Dock
killall Finder

echo "✅ Optimización completada. Es recomendable reiniciar sesión."
