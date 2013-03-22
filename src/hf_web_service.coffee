class HFWebService
  constructor: (options) ->
    express = require 'express'
    app = express()
    app.get '/forecasts', (req, res) ->
      body = null
      res.send(body)

    app.listen(options.port)

exports = HFWebService