

install.packages("tidyverse")
library(tidyverse)

name = 'filipe zabala'

alphabet
nomero <- function(name) {
  name = tolower(name)
  name = gsub(' ', '', name)
  total = 0
  name = match(unlist(strsplit(name, split="")), letters)

  for (i in name) {
    total = total + i 
  }
  return(total)
}

nomero(name)
