## code to prepare `dados` dataset goes here

raw_data <-readr::read_rds()


usethis::use_data(dados, overwrite = TRUE)
