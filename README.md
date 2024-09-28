# Configuracion personal de Neovim

- [ANTES DE NADA](#antes-de-nada)
- [Introduccion](#introduccion)
- [Features](#features)
  - [Dahsboard bien bonita](#dahsboard-bien-bonita)
  - [LSP y autocompletado](#lsp-y-autocompletado)
  - [Árbol de archivos](#árbol-de-archivos)
  - [Autocompletado y generación de código por IA](#autocompletado-y-generación-de-código-por-ia)
  - [Búsqueda de archivos, keymaps, colorschemes, etc...](#búsqueda-de-archivos-keymaps-colorschemes-etc)
  - [Transparencia, preserva la imagen de fondo que tengas en la terminal](#transparencia-preserva-la-imagen-de-fondo-que-tengas-en-la-terminal)
- [Recursos adicionales](#recursos-adicionales)
  - [Nerd Font](#nerd-font)
  - [Node.js](#nodejs)
  - [npm -> Node Pack Manager](#npm---node-pack-manager)
  - [Otras instalaciones](#otras-instalaciones)
- [LSP](#lsp)
  - [¿Qué es un LSP?](#qué-es-un-lsp)

## ANTES DE NADA

Si es tu primera vez usando Neovim, o simplemente para acceder a la documentación
de todo esto (me he cargado bastantes comentarios), echa un vistazo al repositorio
de la configuración inicial, de laque he ido construyendo la mía.
Puedes probarla así tal cual y hacer tu la tuya, pero además tienes la mía como
modelo de como podrías hacerla.

[Kickstart / kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)

Contiene toda la información necesaria, tanto como para instalar Neovim, como
aprender a usarlo, recomendable
leerlo bien antes de usar el mío.

## Introduccion

Configurado a partir del repositorio de [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)

Este repositorio es mi configuración actual que uso en [WSL](https://www.arsys.es/blog/wsl-windows-subsystem-linux)
, depende de lo que te interese puedes:

- Descargarlo y usarlo tal cual
- Clonar el repositorio y usar mi misma config con los cambios que vaya haciendo
- Hacer 'fork' o descargarlo directamente, y modificarlo a tu gusto

(Si a alguien le apetece colaborar en este repo, se pueden abrir ramas y atender
pull request, así como issues, dudas, etc)

Aparte de los requerimientos que tenía el repositorio inicial, los cuales se
encuentran [aquí](https://github.com/nvim-lua/kickstart.nvim?tab=readme-ov-file#installation)
las modificaciones que he ido haciendo requiren recursos adicionales, como algún
gestor de paquetes para instalar ciertos LSP (lo que te da sugerencias y analiza
tu codigo en tiempo real vaya).

Con respecto a esto, puedes hacer 'fork' del repositorio , comentar lo que el
codigo dice que comentes si no quieres instalar estos recursos porque no los vas
a usar, o instalar todo si quieres usar mi versión exacta (updated)

## Features

### Dahsboard bien bonita

![Captura de pantalla 2024-08-25 145516](https://github.com/user-attachments/assets/63a8ca10-44f3-478d-b27b-f4e70ae95407)
[Configuración](https://github.com/krisMG21/config.nvim/blob/master/lua/plugins/dashboard.lua)

### LSP y autocompletado

![Captura de pantalla 2024-08-25 145641](https://github.com/user-attachments/assets/bfa1ada8-583f-40ce-86e5-971bc545d203)
[Configuración](https://github.com/krisMG21/config.nvim/blob/master/lua/plugins/lsp)

### Árbol de archivos

![Captura de pantalla 2024-08-25 150705](https://github.com/user-attachments/assets/f48f11c9-21b3-4b0a-a8a9-063776081712)
[Configuración](https://github.com/krisMG21/config.nvim/blob/master/lua/plugins/kickstart/neo-tree.lua)

### Autocompletado y generación de código por IA

Líneas:
![Captura de pantalla 2024-09-06 004303](https://github.com/user-attachments/assets/7c481cae-4676-4174-9b60-7fbcac1f0c6f)

Bloques de código:
![Captura de pantalla 2024-09-06 004333](https://github.com/user-attachments/assets/29427f30-81b9-4536-b84a-55fbc19ad060)

[Configuración](https://github.com/krisMG21/config.nvim/blob/master/lua/plugins/supermaven.lua)

### Búsqueda de archivos, keymaps, colorschemes, etc

![Captura de pantalla 2024-08-26 195205](https://github.com/user-attachments/assets/62439dc3-9ef0-4817-921a-19377661d0db)
[Configuración](https://github.com/krisMG21/config.nvim/blob/master/lua/plugins/telescope.lua)

### Transparencia, preserva la imagen de fondo que tengas en la terminal

![Captura de pantalla 2024-08-26 191119](https://github.com/user-attachments/assets/1ebb4336-3292-4648-b4ff-4c69cb97cb79)
![Captura de pantalla 2024-08-26 191739](https://github.com/user-attachments/assets/5d3e7054-c6d7-40f9-9537-4c7249e33bfe)

## Recursos adicionales

Para instalar la mayor parte de los recursos, recomiendo tener [chocolatey](https://chocolatey.org/install),
gestor de paquetes muy cómodo para **Windows**, si tienes wget seguramente te sirva
también. En **Linux**, ```sudo apt install ____``` (Ubuntu, la equivalente para
tu distro) suele poder con todo.

Ahora si:

### Nerd Font

Vamos a usar Neovim en una terminal, y la mayoría de plugins hacen uso de unos
iconos fuera de la codificación normal, que unas fuentes especiales se encargan
de abarcar -> [Nerd Fonts](https://nerdfonts.com)

Para usar mi configuración, será necesario instalar una de ellas, la que más te
guste ^^. En mi caso uso la 'Hack Nerd Font'

### Node.js

Tiene soporte para LSP de varios lenguajes, son los tíos de JavaScript.
En el siguiente enlace vienen instalaciones para todos los OS, con distintos
métodos si andamos esquisitos:
[nodejs.org/download/package-manager](https://nodejs.org/en/download/package-manager)

### npm -> Node Pack Manager

Varios LSP buscan esto para instalarse asi que aunque no utilices los mismos que
yo, seguramente lo necesites en un futuro. Debería instalarse con lo anterior,
pero si decides saltarte el paso anterior, a lo mejor con sólo esto vas tirando.

**Windows** ```choco install npm```
**Linux** ```sudo apt install npm```

### Otras instalaciones

Voy a ir apuntando aquí herramientas o comandos de instalación para cosas bien
concretas, por si te interesa tenerlas también

- Access python3 through nvim command line (:)
  ```python3 -m pip install --user --upgrade pynvim```

## LSP

### ¿Qué es un LSP?

Un LSP, o Language Server Provider, es un servidor que provee de autocompletado
en tiempo real, con todas las funciones y variables al alcance, cada una con su
correspondiente documentación.

Para ver que LSP se encuentran implementados en la configuración en este momento,
echa un vistazo a [LSP.md](https://github.com/krisMG21/config.nvim/blob/master/LSP.md)
