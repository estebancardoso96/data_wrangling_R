library(tidyverse)
library(dplyr)
library(stringi) # librería que nos da la función str_squish

registro <- data.frame('Nombre'=c('Jorge', 'Fiorella', 'Hector ', 'Gabriela', 'Jorge', 'Jorge'),
                          'id'=c(1, 2, 3, 4, 1, 1),
                          'fecha'=c(202401, 202401, 202401, 202401, 202401, 202402))

# Elimino espacios a los costados
registro$Nombre <- str_squish(registro$Nombre)

# Ver los duplicados (no incluye la primera aparición)
registro[duplicated(registro), ]

# Ver los duplicados por Nombre e id
registro %>% group_by(Nombre, id) %>% filter(n()>1)

# Elimino las filas enteramente duplicadas
registro <- registro %>% distinct()

# Ver que tomo la primera aparición de id
registro %>% distinct(id, .keep_all = TRUE)

# Ver que tomo la primera aparición de id y fecha (como la fecha es distinta no elimina la última fila)
registro %>% distinct(id, fecha,.keep_all = TRUE)


registro <- registro %>% distinct(id, .keep_all = TRUE)


