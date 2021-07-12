# R TIPS ----
# TIP 001: Reading Multiple Files ----
#
# 👉 For Weekly R-Tips, Signup Here: https://mailchi.mp/business-science/r-tips-newsletter

library(tidyverse)
library(fs)

file_paths <- fs::dir_ls("001_read_multiple_files/data")
file_paths

# 1.0 FOR LOOP ----

file_contents <- list()

for (i in seq_along(file_paths)) {
    file_contents[[i]] <- read_csv(
        file = file_paths[[i]]
    )
}

file_contents <- set_names(file_contents, file_paths)


# 2.0 PURRR MAP ----

file_paths %>%
    map(function (path) {
        read_csv(path)
    })

# versión Cindy
library(readr)
tmp<-list()
for (i in 1:13) {
    tmp[[i]]<-read_csv(paste0("G:/Mi unidad/2021 SIC/0. Coyunturas/3. Abogacía SICOM/precios/precios (",i,").csv"))
}
# luego se pega dependiendo de como se encuentren los datos, por filas o por columnas
total<-list.rbind(tmp_1)
head(total)


