#! /bin/sh

play $HOME/.config/scripts/new-starwars.mp3 2> /dev/null &

userresources=$HOME/.Xresources
# merge in defaults and keymaps

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

###################################################
	#Demonios que se lanzan con startx
####################################################

#Iniciar el demonio de los atajos de teclas
sxhkd &

#Demonio para notificaciones
dunst &

#Demonio de musica en terminal
mpd &

#Fija el tema del cursor
xsetroot -cursor_name left_ptr &

#Fija mi distribución del teclado
setxkbmap -layout latam &

#Fijar colores y tema de mi terminal y wm
wal -R
####################################################


#Ejecutamos bspwm
exec bspwm
