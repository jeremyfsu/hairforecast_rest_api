request = require 'request'
querystring = require 'querystring'

@base_url = 'http://graphical.weather.gov/xml/SOAP_server/ndfdXMLclient.php?'

by_zip = (zip, callback) ->
  query = querystring.stringify {
    zipCodeList: zip
    product: 'time-series'
    temp: 'temp'
    dew: 'dew',
    pop12: 'pop12',
    wspd: 'wspd',
    sky: 'sky',
    wx: 'wx'
  }

  url = @base_url + query

  request url, (err,res,body) ->
    callback(body)

by_coordinates = (lat,lon) ->

exports = 
  get_forecast_by_zip: by_zip
  get_forecast_by_coordinates: by_coordinates