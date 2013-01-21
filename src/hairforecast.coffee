xml = require 'node-xml-lite'

class HairForecast

  constructor: (noaa_xml) ->
    @noaa = xml.parseString noaa_xml
    
    data = {
      period: null
      hairforecast: null
      temp: null
      weather: null }
    
    @forecast = {
      start_time: new Date(Date.parse @noaa.childs[0].childs[0].childs[3].childs[0])
      time0: data
      time1: data
      time2: data
      time3: data
      time4: data
      time5: data }
    
  humanize_time: (t) ->

    

root = exports ? window
root.HairForecast = HairForecast
