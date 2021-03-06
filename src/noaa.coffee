request = require 'request'
querystring = require 'querystring'

class Noaa

  constructor: () ->
    @base_url = 'http://graphical.weather.gov/xml/SOAP_server/ndfdXMLclient.php?'

  get_forecast_by_zip: (zip, callback) ->
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

    request @base_url + query, (err,res,body) ->
      callback(body)

  get_forecast_by_coordinates: (lat,lon) ->


root = exports ? window
root.Noaa = Noaa
