function rmd
  rm -R dist && rm -R .parcel-cache && npm run build $argv; 
end
