#! /bin/bash

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

#Recargar configuración de colores para la terminal
#xrdb ~/.Xresources &
####################################################

#Apps
Spotify &
TelegramDesktop &


#Ejecutamos bspwm
exec bspwm
