BBBox.Views.Boxes || = {}
class BBBox.Views.Boxes.NewView extends Backbone.View
  template: JST["boxes/new"]
  className: "newBox"
  tagName: "form"

  events:
    "submit" : "save"
  constructor: (options)->
    super()
    @boxes = options.boxes
    @box = new BBBox.Models.Boxes()

  render: ->
    @$el.html @template()
    return @

  save: (e)->
    e.preventDefault()
    e.stopPropagation()
    @box.set
      "content" : $(@template).find("textarea").val()
    @box.save null,
      success: (box) =>
        @boxes.add box
      error: =>
        alert "waa"

