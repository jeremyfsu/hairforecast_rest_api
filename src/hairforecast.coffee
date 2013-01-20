xml = require 'node-xml-lite'

class HairForecast
  constructor: (noaa_xml) ->
    @noaa = noaa_xml

    data = {
      period: null
      hairforecast: null
      temp: null
      weather: null }
    
    @forecast = {
      time0: data
      time1: data
      time2: data
      time3: data
      time4: data
      time5: data }
    
    parse_noaa()
      
  parse_noaa: () ->
    xml.parseString @noaa

  humanize_time: (t) ->
    

root = exports ? window
root.HairForecast = HairForecast
