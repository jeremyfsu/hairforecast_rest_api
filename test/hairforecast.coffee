{HairForecast} = require '../src/hairforecast'
fs = require 'fs'
chai = require 'chai'
chai.should()

noaa_sample = fs.readFileSync './test/noaa_sample.xml', 'utf-8'
hf = new HairForecast

describe 'HairForecast', ->
  it 'should have a forecast JSON object as a property', ->
    hf.forecast.should.have.deep.property 'time0.hairforecast'

  it 'should parse NOAA XML response into a JSON object', ->
    forecast = hf.parse_noaa noaa_sample
    forecast.should.have.property('name').equal 'dwml'

  it 'should humanize time of day', ->
    hf.humanize_time("2013-01-18T07:00:00-05:00").should.equal "This Morning"
    hf.humanize_time("2013-01-19T07:00:00-05:00").should.equal "Tomorrow Morning"
