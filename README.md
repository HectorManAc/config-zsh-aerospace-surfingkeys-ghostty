# 💻 Configuración de mi Entorno macOS (config-zsh-aerospace-surfingkeys-ghostty)

Este repositorio contiene mis archivos de configuración de macOS (dotfiles), abarcando herramientas de terminal, gestión de ventanas y navegación productiva:

## 📂 Configuraciones Incluidas

*   **🐚 Zsh (\`.zshrc\`)**: Prompt personalizado en colores neón con fecha/hora compactas y ruta absoluta, autocompletado y resaltado de sintaxis.
*   **🪟 AeroSpace (\`.aerospace.toml\`)**: Configuración completa de atajos de teclado y reglas de workspaces para el gestor de ventanas tiling en macOS.
*   **🌐 Surfingkeys (\`surfingkeys.js\`)**: Atajos estilo Vim y personalizaciones para navegación ágil en Google Chrome / Firefox.
*   **🛠️ Ghostty**: Configuración personalizada de este moderno emulador de terminal.

---

## 🚀 Instalación Rápida (En una Mac Nueva)

Para descargar y aplicar todas estas configuraciones en una computadora limpia con un solo comando, ejecuta:

\`\`\`bash
git clone https://github.com/HectorManAc/config-zsh-aerospace-surfingkeys-ghostty.git ~/dotfiles && ~/dotfiles/install.sh
\`\`\`

---

## 🛠️ Cómo agregar o actualizar configuraciones

Si realizas cambios en tu terminal o deseas agregar archivos a tu respaldo:

1.  **Si agregas un archivo nuevo** (por ejemplo, \`.gitconfig\`):
    *   Muévelo a la carpeta de dotfiles: \`mv ~/.gitconfig ~/dotfiles/\`
    *   Agrégalo al script \`install.sh\` en la lista de enlaces.
    *   Crea el enlace simbólico para tu Mac actual: \`ln -sf ~/dotfiles/.gitconfig ~/.gitconfig\`

2.  **Para guardar y subir tus cambios a GitHub**:
    \`\`\`bash
    cd ~/dotfiles
    git add .
    git commit -m "Actualizar mis dotfiles"
    git push
    \`\`\`
