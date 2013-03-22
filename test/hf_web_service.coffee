HFWebService = require '../src/hf_web_service'
request = require 'request'
chai = require 'chai'
chai.should()

request_hf = (url) ->
  before (done) ->
    request url,
    (error,response) =>
      return error if error?
      @response = response
      done()

describe 'HairForecast Web Service', ->

  hf_web_service = new HFWebService(port: 3500)

  describe 'request by zipcode', ->
    request_hf 'http://localhost:3500/forecasts/?lat=38.0&lon=-85.5'
    it 'should return a JSON object', ->
      @response.headers['content-type'].should.equal 'application/json; charset=utf-8'
    it 'should have hairforecasts in it', ->
      forecast = JSON.parse @response.body
      forecast.should.have.deep.property 'time0.hairforecast'

  describe 'request by lat/lon', ->
    request_hf 'http://localhost:3500/forecasts/?zipcode=40299'
    it 'should return a JSON object', ->
      @response.headers['content-type'].should.equal 'application/json; charset=utf-8'
    it 'should have hairforecasts in it', ->
      forecast = JSON.parse @response.body
      forecast.should.have.deep.property 'time0.hairforecast'
