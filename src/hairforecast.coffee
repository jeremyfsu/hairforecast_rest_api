xml = require 'node-xml-lite'

class HairForecast
  constructor: () ->
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
      
  parse_noaa: (noaa_xml) ->
    xml.parseString noaa_xml

  humanize_time: (t) ->
    

root = exports ? window
root.HairForecast = HairForecast
