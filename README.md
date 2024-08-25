# Configuracion simple pero potente nvim

## ANTES DE NADA
Si es tu primera vez usando Neovim, o simplemente para acceder a la documentación de todo esto
(me he cargado bastantes comentarios), echa un vistazo al repositorio de la configuración inicial, de la
que he ido construyendo la mía. Puedes probarla así tal cual y hacer tu la tuya, pero además tienes la mía
como modelo de como podrías hacerla.

[Kickstart / kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)

Contiene toda la información necesaria, tanto como para instalar Neovim, como aprender a usarlo, recomendable
leerlo bien antes de usar el mío.

## Introduccion

Dahsboard bien bonita
![Captura de pantalla 2024-08-25 145516](https://github.com/user-attachments/assets/abf3e11d-d91f-45a7-905f-bc7968905ade)
[Configuración](https://github.com/krisMG21/config.nvim/blob/master/lua/plugins/dashboard.lua)
<br/><br/><br/><br/>

LSP y autocompletado
![Captura de pantalla 2024-08-25 145641](https://github.com/user-attachments/assets/9e035851-ad84-4304-bbc4-05bc5e3158a0)
[Configuración](https://github.com/krisMG21/config.nvim/blob/master/lua/plugins/lsp)
<br/><br/><br/><br/>

Árbol de archivos
![Captura de pantalla 2024-08-25 150705](https://github.com/user-attachments/assets/c789aeb1-2711-4fa4-9dff-bc7fb790fa34)
[Configuración](https://github.com/krisMG21/config.nvim/blob/master/lua/plugins/kickstart/neo-tree.lua)
<br/><br/><br/><br/>


Configurado a partir del repositorio de [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)

Este repositorio es mi configuración actual que uso en [WSL](https://www.arsys.es/blog/wsl-windows-subsystem-linux#:~:text=WSL%20corresponde%20con%20las%20siglas,familia%20GNU%2FLinux%20en%20Windows.), depende de lo que te interese puedes: 
* Descargarlo y usarlo tal cual
* Clonar el repositorio y usar la configuración de forma sincronizada a la mía
* Hacer 'fork' (o bifurcarlo), y crear tu propio repositorio a partir de este

Aparte de los requerimientos que tenía el repositorio inicial, los cuales se encuentran [aquí](##Installation)
las modificaciones que he ido haciendo requiren recursos adicionales, como algún gestor de paquetes para instalar 
ciertos LSP (lo que te da sugerencias y analiza tu codigo en tiempo real vaya).

Con respecto a esto, puedes hacer 'fork' del repositorio , comentar lo que el codigo dice que comentes si no 
quieres instalar estos recursos porque no los vas a usar, o instalar todo si quieres usar mi versión exacta
(Lo mantendré actualizado dw)

## Recursos adicionales

Para instalar la mayor parte de los recursos, recomiendo tener [chocolatey](https://chocolatey.org/install), 
gestor de paquetes muy cómodo para **Windows**, si tienes wget seguramente te sirva también.
En **Linux**, ```sudo apt install ____``` (Ubuntu, la equivalente para tu distro) suele poder con todo.

Ahora si:

### Node.js
Tiene soporte para LSP de varios lenguajes, son los tíos de JavaScript.
En el siguiente enlace vienen instalaciones para todos los OS, con distintos métodos si andamos esquisitos:
[nodejs.org/download/package-manager](https://nodejs.org/en/download/package-manager)

### npm -> Node Pack Manager
Varios LSP buscan esto para instalarse asi que aunque no utilices los mismos que yo, seguramente lo necesites
en un futuro. Debería instalarse con lo anterior, pero si decides saltarte el paso anterior, a lo mejor con
sólo esto vas tirando.

**Windows** ```choco install npm```
**Linux** ```sudo apt install npm```

## LSP
### ¿Qué es un LSP?
Un LSP, o Language Server Provider, es un servidor que provee de autocompletado en tiempo real, con todas las funciones y variables al alcance, cada una con su correspondiente documentación.

Para ver que LSP se encuentran implementados en la configuración en este momento, echa un vistazo a [LSP.md](https://github.com/krisMG21/config.nvim/blob/master/LSP.md)
