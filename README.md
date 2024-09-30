# Configuración Personal de Neovim

## Tabla de Contenidos

- [Introducción](#introducción)
- [Antes de Empezar](#antes-de-empezar)
- [Características](#características)
- [Recursos Adicionales](#recursos-adicionales)
  - [Gestores de Paquetes Recomendados](#gestores-de-paquetes-recomendados)
  - [Requisitos](#requisitos)
- [Servidores de Lenguaje (LSP)](#servidores-de-lenguaje-lsp)
- [Keymaps](#keymaps)

## Introducción

Este repositorio contiene mi configuración personalizada de Neovim, basada en
[kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim).
Está testeada para su uso en [WSL](https://www.arsys.es/blog/wsl-windows-subsystem-linux),
o Ubuntu, pero debería ser compatible con otras plataformas.

Opciones de uso:

1. Descargar y usar tal cual
2. Clonar el repositorio para mantenerse actualizado con mis cambios
3. Hacer un 'fork' y personalizar según tus necesidades

## Antes de Empezar

Si eres nuevo en Neovim, te recomiendo revisar primero la
[documentación de kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim).
Contiene información esencial sobre la instalación y uso básico de Neovim.

## Características

### Dashboard Personalizado

![Dashboard](https://github.com/user-attachments/assets/63a8ca10-44f3-478d-b27b-f4e70ae95407)
[Configuración](https://github.com/krisMG21/config.nvim/blob/master/lua/plugins/dashboard.lua)

### LSP y Autocompletado

![LSP](https://github.com/user-attachments/assets/bfa1ada8-583f-40ce-86e5-971bc545d203)
[Configuración](https://github.com/krisMG21/config.nvim/blob/master/lua/plugins/lsp)

### Explorador de Archivos

![File Explorer](https://github.com/user-attachments/assets/f48f11c9-21b3-4b0a-a8a9-063776081712)
[Configuración](https://github.com/krisMG21/config.nvim/blob/master/lua/plugins/kickstart/neo-tree.lua)

### Asistencia de IA para Código

![AI Code Assistance](https://github.com/user-attachments/assets/7c481cae-4676-4174-9b60-7fbcac1f0c6f)
[Configuración](https://github.com/krisMG21/config.nvim/blob/master/lua/plugins/supermaven.lua)

### Búsqueda Avanzada

![Advanced Search](https://github.com/user-attachments/assets/62439dc3-9ef0-4817-921a-19377661d0db)
[Configuración](https://github.com/krisMG21/config.nvim/blob/master/lua/plugins/telescope.lua)

### Soporte para Transparencia

![Transparency](https://github.com/user-attachments/assets/1ebb4336-3292-4648-b4ff-4c69cb97cb79)

## Recursos Adicionales

### Gestores de Paquetes Recomendados

- Windows: [Chocolatey](https://chocolatey.org/install)
- Linux: Gestor de paquetes nativo (ej. `apt` para Ubuntu)

### Requisitos

Aparte de los [requerimientos](https://github.com/nvim-lua/kickstart.nvim?tab=readme-ov-file#install-external-dependencies)
que pide kickstart.nvim, necesitas:

1. **Nerd Font**: Necesaria para los iconos. Recomiendo [Hack Nerd Font](https://www.nerdfonts.com/).

2. **Terminal compatible** tanto para las NerdFonts como los backgrounds de la terminal
(y por ende neovim). Recomiendo las siguientes:

- [Windows Terminal](https://learn.microsoft.com/en-us/windows/terminal/install)
- [iTerm](https://iterm2.com/) (Para MacOS)
- [Alacritty](https://alacritty.org/)
- [Kitty](https://sw.kovidgoyal.net/kitty/)
- [WezTerm](https://wezfurlong.org/wezterm/index.html)

Para configurar la Windows Terminal, no tienes más que dar click derecho
en la barra de ventanas y abrir la configuración.

Allí podrás configurar tus preferencias tanto para la terminal por
defecto como por cada soporte de terminal (Powershell, CMD, Ubuntu),
podrás elegir la fuente (NerdFont que hayas instalado) y la imagen de
fondo.

Para el resto, el siguiente [video](https://www.youtube.com/watch?v=mQdB_kHyZn8)
debería servir de explicación.

3. **Node.js**: Instala desde [nodejs.org](https://nodejs.org/en/download/package-manager).

4. **npm**:

   - Windows: `choco install npm`
   - Linux: `sudo apt install npm`

5. **Pynvim** (para acceso a Python3):

```bash
python3 -m pip install --user --upgrade pynvim
```

## Servidores de Lenguaje (LSP)

Los LSP proporcionan autocompletado en tiempo real y análisis de código.
Para ver la lista de LSP implementados, consulta [LSP.md](https://github.com/krisMG21/config.nvim/blob/master/LSP.md).

## Keymaps

Los keymaps en Neovim son una especie de atajos de teclado muy cómodos y rápidos,
que te permiten interactuar con el editor y ejecutar comandos en un abrir y cerrar
de ojos.

A diferencia de los atajos de teclado tradicionales, los keymaps en Neovim no
necesitan que pulses todas las teclas implicadas al mismo tiempo, sino que se escriben
una detrás de otra, haciéndose más cómodo y pudiendo combinar muchas más.

Para ver la lista de keymaps, consulta [KEYMAPS.md](https://github.com/krisMG21/config.nvim/blob/master/KEYMAPS.md).

---

Para más detalles, preguntas, o problemas que encuentres, no dudes en abrir un
issue en el repositorio.
