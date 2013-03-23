{JsonFinder} = require '../src/json_finder'
fs = require 'fs'
chai = require 'chai'
chai.should()

json_sample = fs.readFileSync './test/json_sample.txt', 'utf-8'
jf = new JsonFinder(json_sample)

describe 'JsonFinder', ->
  it 'should find nodes by name', ->
    jf.object('time-layout').should.have.length(2)
