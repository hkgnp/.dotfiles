function rmdsstore
    find / -name '.DS_Store' -type f -delete -print
    find ~/Code_Projects/ -name '.DS_Store' -type f -delete -print
    find ~/.config/ -name '.DS_Store' -type f -delete -print
end
