function extract
    if test -z "$argv"
        # display usage if no parameters given
        echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
    else
        # NAME=${1%.*}
        # mkdir $NAME && cd $NAME
        switch $1 
            case \*.tar.bz2
                tar xvjf ./$1
            case \*.tar.gz
                tar xvzf ./$1
            case \*.tar.xz
                tar xvJf ./$1
            case \*.lzma
                unlzma ./$1
            case \*.bz2
                bunzip2 ./$1
            case \*.rar
                unrar x -ad ./$1
            case \*.gz
                gunzip ./$1
            case \*.tar
                tar xvf ./$1
            case \*.tbz2
                tar xvjf ./$1
            case \*.tgz
                tar xvzf ./$1
            case \*.zip
                unzip ./$1
            case \*.Z
                uncompress ./$1
            case \*.7z
                7z x ./$1
            case \*.xz
                unxz ./$1
            case \*.exe
                cabextract ./$1
            case "\*"
                echo "extract: '$1' - unknown archive method"
        end
    end
end
