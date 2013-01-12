{Jeremy} = require '../src/test'
chai = require 'chai'
chai.should()

describe 'jeremys square test', ->
  it 'should square the given integer', ->
    j = new Jeremy
    j.square(4).should.equal 16