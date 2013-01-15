{Noaa} = require '../src/noaa'
chai = require 'chai'
chai.should()

describe 'Noaa', ->
  this.timeout 5000
  noaa = new Noaa()
  before (done) ->
    noaa.get_points_by_zip '40299', (response) =>
      @response = response
      done()
  it 'should be able to fetch lat/lon for a zipcode', ->
    @response.should.equal null





