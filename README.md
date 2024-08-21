# Configuracion simple pero potente nvim

## ANTES DE NADA
Si es tu primera vez usando esta herramienta, o simplemente para acceder a la documentación de todo esto
(me he cargado bastantes comentarios), echa un vistazo al repositorio de la configuración inicial, de la
que he ido construyendo la mía. Puedes probarla así tal cual y hacer tu la tuya, pero además tienes la mía
como modelo de como podrías hacerla.

[kickstart.nvim]("https://github.com/nvim-lua/kickstart.nvim")

Contiene toda la información necesaria, tanto como para instalar Neovim, como aprender a usarlo, recomendable
leerlo bien antes de usar el mío.

## Introduccion

Configurado a partir del repositorio de ['kickstart.nvim']("https://github.com/nvim-lua/kickstart.nvim"),
pensado para ser una plantilla de inicio para personalizar tu experiencia en nvim a tu gusto.

Este repositorio en concreto es mi configuración actual, depende de lo que te interese puedes: 
* Descargarlo y usarlo tal cual
* Clonar el repositorio y usar lo que esté usando en cada momento
* Hacer 'fork', y crear tu propio repositorio a partir de este

Aparte de los requerimientos que tenía el repositorio inicial, los cuales se encuentran [aquí](##Installation)
las modificaciones que he ido haciendo requiren recursos adicionales, como algún gestor de paquetes para instalar 
ciertos LSP (lo que te da sugerencias y analiza tu codigo en tiempo real vaya).

Con respecto a esto, puedes hacer 'fork' del repositorio , comentar lo que el codigo dice que comentes si no 
quieres instalar estos recursos porque no los vas a usar, o instalar todo si quieres usar mi versión exacta
(Lo mantendré actualizado dw)

## Recursos adicionales

Para instalar la mayor parte de los recursos, recomiendo tener [chocolatey]("https://chocolatey.org/install"), 
gestor de paquetes muy cómodo para **Windows**, si tienes wget seguramente te sirva también.
En **Linux**, ```sudo apt install ____```(Ubuntu, la equivalente para tu distro) suele poder con todo.

Ahora si:

### Node.js
Tiene soporte para LSP de varios lenguajes, son los tíos de JavaScript.
En el siguiente enlace vienen instalaciones para todos los OS, con distintos métodos si andamos esquisitos:
[nodejs.org/download/package-manager]("https://nodejs.org/en/download/package-manager")

### npm -> Node Pack Manager
Varios LSP buscan esto para instalarse asi que aunque no utilices los mismos que yo, seguramente lo necesites
en un futuro. Debería instalarse con lo anterior, pero si decides saltarte el paso anterior, a lo mejor con
sólo esto vas tirando.

**Windows** ```choco install npm```
**Linux** ```sudo apt install npm```
