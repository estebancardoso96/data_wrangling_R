library(tidyverse)
library(dplyr)
library(stringi) # librería que nos da la función str_squish

registro <- data.frame('Nombre'=c('Jorge', 'Fiorella', 'Hector ', 'Gabriela', 'Jorge', 'Jorge'),
                          'id'=c(1, 2, 3, 4, 1, 1),
                          'fecha'=c(202401, 202401, 202401, 202401, 202401, 202402))


registro
