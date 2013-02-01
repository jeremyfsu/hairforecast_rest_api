class JsonFinder

  constructor: (json) ->
    @json = json

  recurse_children: (name, obj) ->
    if obj.name == name
      return obj.childs
    else
      obj.childs.every (child) ->
        this.recurse_children(name,child)

  get_attr: (name) ->

  get_children: (name) ->
    return this.recurse_children(name,@json)

root = exports ? window
root.JsonFinder = JsonFinder
