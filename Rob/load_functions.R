easyr::begin(load = c("dplyr", "data.table", "tidyr", "brms"))

calc_rmsle <- function(y, yhat){
  n_y <- length(y)
  rmsle <- sqrt((1 / n_y) * sum((log(1 + yhat) - log(1 + y))^2))
}