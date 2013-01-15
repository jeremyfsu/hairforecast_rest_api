request = require 'request'
xml = require 'node-xml-lite'
querystring = require 'querystring'

class Noaa

  constructor: () ->
    @base_url = 'http://graphical.weather.gov/xml/SOAP_server/ndfdXMLclient.php?'

  get_points_by_zip: (zip, callback) ->
    query = querystring.stringify {
      zipCodeList: zip
      product: 'time-series'
      maxt: 'maxt'
      dew: 'dew'}

    request @base_url + query, (err,res,body) ->
      callback(xml.parseString(body))

  get_points_by_city: (city) ->
    #return list of cities matching query with lat/lon pairs
    #or if only one match, call get_forecast with the lat,lon

  get_forecast: (lat,lon) ->

root = exports ? window
root.Noaa = Noaa
