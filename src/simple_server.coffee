express = require 'express'
app = express()

app.get '/forecasts', (req, res) ->
  body =
    time0:
      period: "This Morning"
      hairforecast: 8
      temp: 72
      weather: "Foggy"
    time1:
      period: "This Afternoon"
      hairforecast: 4
      temp: 78
      weather: "Chance of rain"
    time2:
      period: "This Evening"
      hairforecast: 4
      temp: 78
      weather: "Chance of rain"
    time3:
      period: "Tuesday Morning"
      hairforecast: 4
      temp: 78
      weather: "Chance of rain"
    time4:
      period: "Tuesday Afternoon"
      hairforecast: 4
      temp: 78
      weather: "Chance of rain"
    time5:
      period: "Tuesday Evening"
      hairforecast: 4
      temp: 78
      weather: "Chance of rain"
  #res.setHeader('Content-Type', 'application/json')
  #res.setHeader('Content-Length', body.length)
  res.send(body)

app.listen(3500)
