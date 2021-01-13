# itscarlosecp's dotfiles
Este es un repositorio en el que guardo la configuración que tengo en los programas que utilizo con mayor frecuencia:
 * [Neovim](https://github.com/neovim/neovim.github.io/) (Aunque también se puede utilizar Vim)
 * [Alacritty](https://github.com/alacritty/alacritty) (Terminal Emulator)
 * [Tmux](https://github.com/tmux/tmux) (Terminal Multiplexer)
 * [Libinput Gestures](https://github.com/bulletmark/libinput-gestures) (Touchpad Gestures for Gnome)

La intensión de este repo es tanto guardar mis propias configuraciones para llevar un historial de los cambios que voy haciendo en estos programas, como compartir los archivos con cualquier persona que le interese probar mis archivos de configuración. 
Para este ultimo caso siempre recomiendo que cada quien termine haciendo su propio config file, al fin y al cabo el propósito es tener sus programas como a cada quien le gusta, pero para situaciones en donde tener un archivo ya hecho conviene, podría recomendar mis archivos para comenzar (especialmente en el caso de Vim). Disfruten.

## Prerequisites
Con anterioridad tenía un script de instalación, que pues, me instalaba la mayoría de los programas que utilizo, incluso aquellos cuyas configuraciones no guardaba. 
Sin embargo ese script estaba mas que nada diseñado para Ubuntu-based OS, así que decidí mejor solamente enlistar las dependencias necesarias para que los programas enlistados funcionen correctamente con mis archivos de configuración. 

Estas dependencias deberán ser instaladas manualmente (si quieren hacer un script pues mejor, pero me refiero a que yo no proporciono ninguno) por el usuario en dependencia del sistema operativo que utilice.

* **Neovim**
  
  Estas dependencias son especificas para Neovim (no se si funcionan en Vim normal, el archivo de configuración si, solo hay que cambiarle el nombre a `~/.vimrc` <ins>(ubicación y nombre del archivo)</ins>.
  
  La primera de todas es, claramente, ***Neovim*** (link en la primera sección de este README). Una vez instalado el programa, hay que instalar los programas necesarios para utilizar mi config file `~/.config/nvim/init.vim`:
  
  * [**NodeJS**](https://nodejs.org/en/). Recomendablemente instalada a través de [NVM](https://github.com/nvm-sh/nvm). Se sugiere utilizar la versión LTS de NodeJS, debido al funcionamiento de otros programas que lo requieren.
  * [**Vim-plug**](https://github.com/junegunn/vim-plug). Se puede utilizar cualquier otro plugin manager para Vim, pero el archivo de configuración utiliza este.
  * [**ripgrep**](https://github.com/BurntSushi/ripgrep). No es obligatorio, pero ayuda mucho para trabajar en proyectos grandes.
 
  Una vez se hayan instalado **todas** las dependencias anteriormente enlistadas, se debe entrar a Neovim (`nvim`) y se debe correr el comando `:PlugInstall` (Si es la primera vez de alguien utilizando Vim, asegurense de teclear dos veces <kdb>Esc</kbg> seguidas, para entrar en "normal mode").
  A continuación se harán dos instalaciones, la primera de los plugins enlistados, y la otra de los plugins de [CoC](https://github.com/neoclide/coc.nvim) (esta ultima a lo mejor requiere salir de Vim y volver a entrar, comando `:q!` en "normal mode").
  
  De ahí en adelante van a tener que instalar algún que otro programa en función de lo que usen o no. Por ejemplo, los plugins para Python, requieren de alguna distribución de este mismo. El buscador de archivos requiere que se esté dentro de un repositorio de git, etc.
  
* **Alacritty**

  No hay realmente ninguna dependencia para este programa, pero el archivo de configuración utiliza la fuente [JetBrains Mono Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/JetBrainsMono).
  
## Instructions

* **Neovim**
 
  Esto es standard, pero lo indico por si confunde al inicio, el archivo `init.vim`, va dentro del folder `~/.config/nvim/`, no es igual para Vim normal. Todos los folderes que están dentro de mi folder `nvim` tambien van ahí, asi que se puede simplemente copiar todo el directorio `nvim` a `~/.config/`.
  Las demás no son instrucciones de como utilizar Vim directamente, sino que mas bien son algunos cambios propios que yo hice:
  * El file explorer que utilizo por defecto es [CoC Explorer](https://github.com/weirongxu/coc-explorer). Si se esta iniciando en Vim quizá sea más cómodo utilizar [NERDTree](https://github.com/preservim/nerdtree), para el cual también tengo un archivo de configuración en este repo, en la branch [nerdtree](https://github.com/itscarlosecp/dotfiles/tree/nerdtree).
  Sea cual se el explorer, yo tengo las teclas <kbd>Ctrl+E</kbd> para activarlo, el resto de la navegación por los explorers es la configuración por defecto.
  * Si se quiere acceder rápidamente al archivo de configuración, se presionan las teclas <kbd>Space+c+Enter</kbd> en "normal mode".
  * Esta comentado el remapping de la tecla <kbd>Esc</kbd> para entrar en "normal mode" a la tecla <kbd>j</kbd>, que es más rapido. Si se quiere descomentar referirse a la línea 286.
  * Si se desea utilizar el buscador [FZF](https://github.com/junegunn/fzf) las teclas correspondientes para activarlo son <kbd>Ctrl+P</kbd>, y solo funciona dentro de un repositorio de git. Para cambiar esto último eliminar la línea 293.

* **Tmux**

  Esto también es standard (aunque no debería). El archivo `.tmux.conf`, a diferencia de la gran mayoría de archivos de configuración, no va dentro de la carpeta `~/.config/` sino que va directamte en la raiz de home `~/.tmux.conf`.
  
  A su vez hay algunas keybinds custom mias para tmux, sugiero mejor revisar el archivo, ya que son pocas y esta bastante claro.
