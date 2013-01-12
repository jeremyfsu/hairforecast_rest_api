r = require 'request'

r 'http://localhost:3500', (e,r,b) ->
  console.log r.headers
  a = JSON.parse b
  console.log a.b