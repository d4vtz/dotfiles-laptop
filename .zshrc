#                                                                            
#        	       Mi configurción de zsh                  
#                          By:CallmeDav 



#		Aplicar esquema de colores de pywal
#################################################################
(/usr/bin/cat /home/medicendav/.cache/wal/sequences &)
source /home/medicendav/.cache/wal/colors-tty.sh


#	Configurando mi prompt en  ~/.p10k.zsh.
#################################################################
source /home/medicendav/git/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f /home/medicendav/.p10k.zsh ]] || source /home/medicendav/.p10k.zsh


#       		Leyendo mis funciones
#################################################################
source /home/medicendav/.zsh/funciones_zsh


#       Generando mi historial de comandos
#################################################################
SAVEHIST=1000
HISTFILE=/home/medicendav/.zsh_history


#			Leyendo mis Alias
#################################################################
source /home/medicendav/.zsh/alias_zsh





source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

