# this is just a playground

library(pacman)

p_load(
  prophet,
  tidyverse
  )

df <- read.csv("./data/example_wp_log_peyton_manning.csv")

m <- prophet(df)

future <- make_future_dataframe(m, periods = 365)
tail(future)

forecast <- predict(m, future)
tail(forecast[c('ds', 'yhat', 'yhat_lower', 'yhat_upper')])

plot(m, forecast)