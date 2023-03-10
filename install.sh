main () {
    if [ -f "$HOME/.bash_profile" ]; then
        echo ".bash_profile exits!"

        if [ -f "$HOME/.bash_aliases" ]; then
            echo ".bash_aliases exists!"
            write_aliases_to_bash_aliases
            echo "Appending project bin to path..."
            append_bin_to_path
            echo "All done!"
        else
            echo ".bash_aliases does not exist!"
            echo "Writing to aliases to .bash_profile..."
            write_aliases_to_bash_profile
            echo "Appending bin to path..."
        fi
    else
        echo ".bash_profile does not exist! you shmuck"
        touch "$HOME/.bash_profile"
        write_aliases_to_bash_profile
        append_bin_to_path
    fi
}

append_bin_to_path () {
    echo '''export PATH="$PATH:/Users/christopherreilly/Music/Ableton/yodeling_echo Project/bin"''' >> $HOME/.bash_profile
}

write_aliases_to_bash_profile () {
    echo '''alias 1="floyd_collins -1"''' >> ~/.bash_profile
    echo '''alias 2="floyd_collins -2"''' >> ~/.bash_profile
}

write_aliases_to_bash_aliases () {
    echo '''alias 1="floyd_collins -1"''' >> ~/.bash_aliases
    echo '''alias 2="floyd_collins -2"''' >> ~/.bash_aliases
}
main
