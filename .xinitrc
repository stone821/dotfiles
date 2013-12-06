xset +fp ~/.fonts/tamzen-font
xset +fp ~/.fonts/tamsyn-font
xset fp rehash
xrdb -merge ~/.Xresources

exec ck-launch-session dbus-launch --sh-syntax --exit-with-session awesome
