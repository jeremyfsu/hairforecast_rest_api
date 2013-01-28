{JsonFinder} = require '../src/json_finder'
fs = require 'fs'
chai = require 'chai'
chai.should()

json_sample = fs.readFileSync './test/json_sample.xml', 'utf-8'
jf = new JsonFinder(json_sample)

describe 'JsonFinder', ->
  it 'should find attributes', ->
    jf.get_attr('version').should.equal "1.0"    
  it 'should find child elements', ->
    jf.get_children('source').should.have.length(6)
  it 'should get text for a node', ->
    jf.get_text('location-key')[0].should.equal "point1"
