#{HairForecast} = require '../src/hairforecast'
fs = require 'fs'
xml = require 'node-xml-lite'
chai = require 'chai'
chai.should()

describe 'HairForecast', ->
  before (done) ->
    fs.readFile './test/noaa_sample.xml', (err, data) =>
      @noaa_sample = data
      done()

  it 'should parse NOAA XML response into a JSON object', ->
    console.log @noaa_sample
    @noaa_sample.should.not.equal null
