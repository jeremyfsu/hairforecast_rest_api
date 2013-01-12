class Noaa
  constructor: () ->

  get_points_by_zip: (zip) ->
#    options =
#      hostname: 'graphical.weather.gov/',
#      port: 80,
#      path: '/xml/SOAP_server/ndfdXMLclient.php'
#
#    req = http.request(options)
#
#    data = listZipCodeList: 40299
#
#    req.write data
#
#    req.end



  get_points_by_city: (city) ->

  get_forecast: (lat,lon) ->

root = exports ? window
root.Noaa = Noaa
