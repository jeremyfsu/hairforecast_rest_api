class JsonFinder

  constructor: (json) ->
    @json = JSON.parse json

  descend: (name, obj) ->
    if obj.name == name
      @results.push(obj)
    if typeof(obj.childs) != 'undefined'
      for i in [0..obj.childs.length - 1]
        if typeof(obj.childs[i]) == "string"
          break
        this.descend(name, obj.childs[i])
    
  object: (name) ->
    @results = []
    this.descend(name, @json)
    return @results

root = exports ? window
root.JsonFinder = JsonFinder
