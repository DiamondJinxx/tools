#!/usr/bin/env fish
set color "light"
set config "/home/jinxx/.config/fish/config.fish"
set f (ack $color ~/.config/fish/config.fish) 
if test -z "$f"
    sed -i "s/dark/light/" $config          
    source $config
else
    sed -i "s/light/dark/" $config
    source $config
end 
