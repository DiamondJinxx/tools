#!/usr/bin/env fish

set current_file "create_links.fish"
set dir "/home/jinxx/tools"
set usr "/usr/local/bin"
set list (ls /home/jinxx/tools/ | sed "s/$current_file//g" ) #| xargs echo )
for file in $list
    set x (echo "$file" | sed 's/.fish//g')
    if test -n "$x"
        echo "sudo chmod +x $file" | sh
        echo "sudo ln -s $dir/$file $usr/$x" | sh
    end

end
