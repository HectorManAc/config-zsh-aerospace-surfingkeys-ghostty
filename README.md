# 💻 Configuración de mi Entorno macOS (config-zsh-aerospace-surfingkeys-ghostty)

Este repositorio contiene mis archivos de configuración de macOS (dotfiles), abarcando herramientas de terminal, gestión de ventanas y navegación productiva:

## 📂 Configuraciones Incluidas

*   **🐚 Zsh (\`.zshrc\`)**: Prompt personalizado en colores neón con fecha/hora compactas y ruta absoluta, autocompletado y resaltado de sintaxis.
*   **🪟 AeroSpace (\`.aerospace.toml\`)**: Configuración completa de atajos de teclado y reglas de workspaces para el gestor de ventanas tiling en macOS.
*   **🌐 Surfingkeys (\`surfingkeys.js\`)**: Atajos estilo Vim y personalizaciones para navegación ágil en Google Chrome / Firefox.
*   **🛠️ Ghostty**: Configuración personalizada de este moderno emulador de terminal.

---

## 🚀 Instalación Rápida (En una Mac Nueva)

Para descargar y aplicar todas estas configuraciones en una computadora limpia, ejecuta un solo comando en tu terminal:

```bash
git clone https://github.com/HectorManAc/config-zsh-aerospace-surfingkeys-ghostty.git ~/dotfiles && ~/dotfiles/install.sh
```

**¿Qué hace este script (`install.sh`)?**
1. Crea las carpetas necesarias (por ejemplo, `~/.config/ghostty`).
2. Genera enlaces simbólicos (`symlinks`) desde la carpeta `~/dotfiles` hacia las rutas oficiales en tu Mac. Así, cuando modifiques un archivo desde tu sistema, se estará modificando directamente en la carpeta de este repositorio.

### Atajos Útiles (Aliases)

He incluido atajos en tu `.zshrc` para gestionar fácilmente estos archivos en el futuro:
- `dotfiles-reload`: Recarga la configuración actual de Zsh sin cerrar la terminal.
- `dotfiles-update`: Descarga la última versión de tu repositorio, ejecuta el instalador y recarga Zsh.

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
