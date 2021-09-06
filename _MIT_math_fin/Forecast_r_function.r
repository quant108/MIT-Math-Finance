#Saved in the file Forecast_r_function.r
library(forecast)
Forecast_r_function= function(actuals, freq){
    y <- ts(actuals,frequency = freq)
    fit <- auto.arima(y, seasonal=TRUE)
    forecasted = forecast(fit, h=5)
    return (forecasted)
    }

