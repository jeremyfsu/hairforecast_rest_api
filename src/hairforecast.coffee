xml = require 'node-xml-lite'
{JsonFinder} = require '../src/json_finder'

class HairForecastData
  constructor: -> {
    period: null
    hairforecast: null
    temp: null
    weather: null }
    
class HairForecast

  constructor: (noaa_xml) ->
    json = xml.parseString noaa_xml
    @noaa = new JsonFinder(json)
    
    @forecast = {
      #start_time: new Date(Date.parse @noaa.get_children("time-layout"))
      time0: new HairForecastData
      time1: new HairForecastData
      time2: new HairForecastData
      time3: new HairForecastData
      time4: new HairForecastData
      time5: new HairForecastData
    }
    
  humanize_time: (t) ->

root = exports ? window
root.HairForecast = HairForecast
