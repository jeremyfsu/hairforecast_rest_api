class JsonFinder

  constructor: (json) ->
    @json = JSON.parse json
  
  descend: (name, obj) ->
    if obj.name == name
      return obj.childs
    else
      for i in [0..obj.childs.length - 1]
        if typeof(obj.childs[i]) == "string"
          break
        result = this.descend(name, obj.childs[i])
        if typeof(result) != 'undefined'
          return result

  get_attr: (name) ->
    throw new Error "not impleneted yet"

  get_children: (name) ->
    return this.descend(name, @json)

exports = JsonFinder
