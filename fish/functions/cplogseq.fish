function cplogseq
    killall Logseq
    rsync -av --exclude ".DS_Store" /Volumes/GoogleDrive-102345123973693556479/My\ Drive/2\ areas/logseq/  ~/Library/Mobile\ Documents/iCloud~com~logseq~logseq/Documents/logseq
end
