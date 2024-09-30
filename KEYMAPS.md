# Keymaps

En Neovim, lo que en otros casos puede referirse como keyboard shortcuts o similares,
se le denomina keymaps.

La cosa es que estos no funcionan exactamente igual que los anteriores, en vez
de tener que pulsar todas las teclas al mismo tiempo, se pulsan una detrás de otra,
por lo que se pueden combinar muchas más.

Las siguientes tablas representan los principales keymaps o más importantes que
hay disponibles en esta configuración, tanto los básicos de vim como
los creados para los plugins.

## Indice

- [Quick notes](#quick-notes)

### Vanilla

- [Movimiento](#movimiento)
- [Navegación](#navegación)
- [Edición](#edición)
- [Borrado](#borrado)
- [Yanking (Copiar)](#yanking-copiar)
- [Pegar](#pegar)
- [Búsqueda](#búsqueda)
- [Modo Visual](#modo-visual)
- [Combos](#combos)

### Plugins

- [Neo-tree](#neo-tree)
- [Telescope](#telescope)

## Quick notes

En cuanto a nombrar las teclas y combinaciones, usaré la convención que usa
Neovim, la cual ya que estoy te explico:

- `<leader>` es una especie de acceso rápido a la mayoría
de keymaps. Se puede cambiar en la configuración, pero de
momento es el espacio. `<leader> --> SPACE`
- Ctrl + char = `<C-CHAR>` (Ej: `<C-N>` = Ctrl + n)
- Shift + char = `CHAR` (no se escribe `<S-CHAR>` sino el caracter ascci que
resulta de la combinación de Shift + letra, Ej: `<S-A>` = `A`, `<S-7>` = `/`)
- Alt + char = `<M-CHAR>` (No creo que se use mucho)

El resto tal cual se escriban.

## Movimiento

| Key | Action |
| --- | --- |
| `h` | Mover cursor a la izquierda |
| `j` | Mover cursor hacia abajo |
| `k` | Mover cursor hacia arriba |
| `l` | Mover cursor a la derecha |

## Navegación

| Key | Action |
| --- | --- |
| `gg` | Ir al inicio del archivo |
| `G` | Ir al final del archivo |
| `0` | Ir al inicio de la línea |
| `^` | Ir al primer carácter no blanco de la línea |
| `$` | Ir al final de la línea |
| `gt` | Ir al siguiente tab |
| `gT` | Ir al tab anterior |

## Edición

| Key | Action |
| --- | --- |
| `i` | Entrar en modo inserción antes del cursor |
| `a` | Entrar en modo inserción después del cursor |
| `o` | Insertar nueva línea debajo y entrar en modo inserción |
| `O` | Insertar nueva línea arriba y entrar en modo inserción |

## Borrado

| Key | Action |
| --- | --- |
| `d` | Borrar (usado con movimientos) |
| `dd` | Borrar línea actual |
| `D` | Borrar desde el cursor hasta el final de la línea |

## Yanking (Copiar)

| Key | Action |
| --- | --- |
| `y` | Copiar (usado con movimientos) |
| `yy` | Copiar línea actual |
| `Y` | Copiar desde el cursor hasta el final de la línea |

## Pegar

| Key | Action |
| --- | --- |
| `p` | Pegar después del cursor |
| `P` | Pegar antes del cursor |

## Búsqueda

| Key | Action |
| --- | --- |
| `/` | Buscar hacia adelante |
| `?` | Buscar hacia atrás |
| `n` | Ir a la siguiente ocurrencia de la búsqueda |
| `N` | Ir a la ocurrencia anterior de la búsqueda |

## Modo Visual

| Key | Action |
| --- | --- |
| `v` | Entrar en modo visual (selección de caracteres) |
| `V` | Entrar en modo visual de línea |
| `<C-v>` | Entrar en modo visual de bloque |

## Ventanas

| Key | Action |
| --- | --- |
| `<C-W>s` | Dividir ventana horizontalmente |
| `<C-W>v` | Dividir ventana verticalmente |
| `<C-W>q` | Cerrar ventana actual |
| `<C-W>o` | Cerrar todas las ventanas excepto la actual |
| `<C-W>w` | Mover al siguiente panel |
| `<C-W>p` | Mover al panel previo |
| `<C-W>h` | Mover al panel izquierdo |
| `<C-W>j` | Mover al panel inferior |
| `<C-W>k` | Mover al panel superior |
| `<C-W>l` | Mover al panel derecho |
| `<C-W>x` | Intercambiar posición con el siguiente panel |
| `<C-W>T` | Mandar ventana a nuevo tab |
| `<C-W>=` | Hacer todos los paneles de igual tamaño |
| `<C-W>_` | Hacer todos los paneles de igual altura |
| `<C-W>\|` | Hacer todos los paneles de igual ancho* |
| `<C-W>-` | Disminuir altura del panel actual |
| `<C-W>+` | Aumentar altura del panel actual |
| `<C-W><` | Disminuir ancho del panel actual |
| `<C-W>>` | Aumentar ancho del panel actua |

*se usa un \ para que no se joda el formato de la tabla, no usar en la práctica

## Combos

A algunos keymaps es muy común añadir los siguientes wombo combos para aplicarlos
exactamente a la pieza de texto que le interesa:

| Subgroup | Action |
| --- | --- |
| *`i` : Inside* | Aplicar la acción dentro de...|
| *`a` : Around* | Aplicar la acción alrededor de...|

| Key | Action |
| --- | --- |
| `w` | ... la palabra actual |
| `b` | ... todo codigo dentro del () actual |
| `B` | ... todo codigo dentro del {} actual |
| `"` | ... todo codigo dentro de las "" actual |
| `'` | ... todo codigo dentro de las '' actual |
| `<` | ... todo codigo dentro de las <> actual |

Ejemplos: `ciw` = insertar de la palabra actual,
`daw` = borrar la palabra actual y espacios alrededor, etc.

De todas formas, cada vez que se empieza un keymap, aparece un cuadro con todas
las combinaciones a partir de la actual, ¡no tengas miedo de probar!

## Neo-tree

Neotree es el plugin que se encarga de mostrar el árbol de directorios.

| Key | Action |
| --- | --- |
|`\`| Toggle file tree |
|`<C-N>`| Toggle file tree|

Dentro de la ventana que muestra, puedes moverte con hjkl y utilizar las
siguientes funcionalidades:

| Key | Action |
| --- | --- |
|`<CR>`| Abrir archivo |
|`a` | Agregar archivo |
|`c` | Copiar archivo |
|`d` | Borrar archivo |
|`m` | Mover archivo |
|`p` | Pegar archivo |
|`r` | Renombrar archivo |
|`y` | Copiar nombre del archivo |
|`x` | Cortar archivo |

Sirven así mismo para directorios, solo que al nombrarlos deberás añadir un `/`
al final para interpretarlos como tales.
tos.

## Telescope

Telescope es uno de los mejores plugins de la configuración, fuzzy-finder para
archivos dentro del directorio actual y subdirectorios, palabras dentro de archivos,
pero también colorschemes, keymaps, etc.

| Key | Action |
| --- | --- |
| `<leader>sc` | Buscar y previsualizar un colorscheme |
| `<leader>sd` | Buscar diagnosticos |
| `<leader>sf` | Buscar rchivos |
| `<leader>sg` | Buscar (texto) en el buffer actual |
| `<leader>sh` | Buscar ayuda |
| `<leader>sk` | Buscar keymaps |
| `<leader>sn` | Buscar archivos de Neovim |
| `<leader>ss` | Buscar funciones de Telescope |
| `<leader>sw` | Buscar repeticiones de la palabra actual |
| `<leader>sr` | Reanuda la última búsqueda |
| `<leader>s/` | Buscar en los archivos abiertos |
| `<leader>s.` | Buscar archivos recientes |
| `<leader><leader>` | Buscar buffers existentes |
