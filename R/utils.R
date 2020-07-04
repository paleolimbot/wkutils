
new_data_frame <- function(x, nrow = length(x[[1]])) {
  tibble::new_tibble(x, nrow = nrow)
}
