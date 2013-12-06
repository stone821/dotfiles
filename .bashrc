# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi
# https://bbs.archlinux.org/viewtopic.php?pid=1068202#p1068202
PS1="\[\033[0;37m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;31m\]\342\234\227\[\033[0;37m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[0;31m\]\h'; else echo '\[\033[0;33m\]\u\[\033[0;37m\]@\[\033[0;96m\]\h'; fi)\[\033[0;37m\]]\342\224\200[\[\033[0;32m\]\w\[\033[0;37m\]]\n\[\033[0;37m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]"

# Put your fun stuff here.
alias font="printf '\e]710;%s\007'"

alias Tamzen-9=Tamzen5x9r
alias Tamzen5x9r='font -misc-tamzen-medium-r-normal--9-65-100-100-c-50-iso8859-1'
alias Tamzen5x9b='font -misc-tamzen-bold-r-normal--9-65-100-100-c-50-iso8859-1'

alias Tamzen-11=Tamzen6x11r
alias Tamzen6x11r='font -misc-tamzen-medium-r-normal--11-79-100-100-c-60-iso8859-1'
alias Tamzen6x11b='font -misc-tamzen-bold-r-normal--11-79-100-100-c-60-iso8859-1'

alias Tamzen-12=Tamzen6x12r
alias Tamzen6x12r='font -misc-tamzen-medium-r-normal--12-87-100-100-c-60-iso8859-1'
alias Tamzen6x12b='font -misc-tamzen-bold-r-normal--12-87-100-100-c-60-iso8859-1'

alias Tamzen-13=Tamzen7x12r
alias Tamzen7x12r='font -misc-tamzen-medium-r-normal--12-87-100-100-c-70-iso8859-1'
alias Tamzen7x12b='font -misc-tamzen-bold-r-normal--12-87-100-100-c-70-iso8859-1'

alias Tamzen-14=Tamzen7x14r
alias Tamzen7x14r='font -misc-tamzen-medium-r-normal--14-101-100-100-c-70-iso8859-1'
alias Tamzen7x14b='font -misc-tamzen-bold-r-normal--14-101-100-100-c-70-iso8859-1'

alias Tamzen-15=Tamzen8x15r
alias Tamzen8x15r='font -misc-tamzen-medium-r-normal--15-108-100-100-c-80-iso8859-1'
alias Tamzen8x15b='font -misc-tamzen-bold-r-normal--15-108-100-100-c-80-iso8859-1'

alias Tamzen-17=Tamzen8x17r
alias Tamzen8x17r='font -misc-tamzen-medium-r-normal--17-123-100-100-c-80-iso8859-1'
alias Tamzen8x17b='font -misc-tamzen-bold-r-normal--17-123-100-100-c-80-iso8859-1'

alias Tamzen-20=Tamzen10x20r
alias Tamzen10x20r='font -misc-tamzen-medium-r-normal--20-145-100-100-c-100-iso8859-1'
alias Tamzen10x20b='font -misc-tamzen-bold-r-normal--20-145-100-100-c-100-iso8859-1'

# Tamzen fonts for use with Powerline
alias TamzenForPowerline-9=TamzenForPowerline5x9r
alias TamzenForPowerline5x9r='font -misc-tamzenforpowerline-medium-r-normal--9-65-100-100-c-50-iso10646-1'
alias TamzenForPowerline5x9b='font -misc-tamzenforpowerline-bold-r-normal--9-65-100-100-c-50-iso10646-1'

alias TamzenForPowerline-11=TamzenForPowerline6x11r
alias TamzenForPowerline6x11r='font -misc-tamzenforpowerline-medium-r-normal--11-79-100-100-c-60-iso10646-1'
alias TamzenForPowerline6x11b='font -misc-tamzenforpowerline-bold-r-normal--11-79-100-100-c-60-iso10646-1'

alias TamzenForPowerline-12=TamzenForPowerline6x12r
alias TamzenForPowerline6x12r='font -misc-tamzenforpowerline-medium-r-normal--12-87-100-100-c-60-iso10646-1'
alias TamzenForPowerline6x12b='font -misc-tamzenforpowerline-bold-r-normal--12-87-100-100-c-60-iso10646-1'

alias TamzenForPowerline-13=TamzenForPowerline7x12r
alias TamzenForPowerline7x12r='font -misc-tamzenforpowerline-medium-r-normal--12-87-100-100-c-70-iso10646-1'
alias TamzenForPowerline7x12b='font -misc-tamzenforpowerline-bold-r-normal--12-87-100-100-c-70-iso10646-1'

alias TamzenForPowerline-14=TamzenForPowerline7x14r
alias TamzenForPowerline7x14r='font -misc-tamzenforpowerline-medium-r-normal--14-101-100-100-c-70-iso10646-1'
alias TamzenForPowerline7x14b='font -misc-tamzenforpowerline-bold-r-normal--14-101-100-100-c-70-iso10646-1'

alias TamzenForPowerline-15=TamzenForPowerline8x15r
alias TamzenForPowerline8x15r='font -misc-tamzenforpowerline-medium-r-normal--15-108-100-100-c-80-iso10646-1'
alias TamzenForPowerline8x15b='font -misc-tamzenforpowerline-bold-r-normal--15-108-100-100-c-80-iso10646-1'

alias TamzenForPowerline-17=TamzenForPowerline8x17r
alias TamzenForPowerline8x17r='font -misc-tamzenforpowerline-medium-r-normal--17-123-100-100-c-80-iso10646-1'
alias TamzenForPowerline8x17b='font -misc-tamzenforpowerline-bold-r-normal--17-123-100-100-c-80-iso10646-1'

alias TamzenForPowerline-20=TamzenForPowerline10x20r
alias TamzenForPowerline10x20r='font -misc-tamzenforpowerline-medium-r-normal--20-145-100-100-c-100-iso10646-1'
alias TamzenForPowerline10x20b='font -misc-tamzenforpowerline-bold-r-normal--20-145-100-100-c-100-iso10646'
