{Noaa} = require '../src/noaa'
xml = require 'node-xml-lite'
chai = require 'chai'
chai.should()

describe 'Noaa', ->
	this.timeout 5000
	noaa = new Noaa()
	before (done) ->
		noaa.get_forecast_by_zip '40299', (response) =>
			@response = response
			done()
  
	it 'should be able to fetch forecast for a zipcode', ->
		@response.should.not.equal null
		forecast = xml.parseString @response
		forecast.should.have.property('name').equal 'dwml'



