BBBox.Views.Boxes || = {}
class BBBox.Views.Boxes.BoxView extends Backbone.View
  template: JST["boxes/box"]
  className: "btn btn-default"

  events:
    "click #delete" : "destroy"
  constructor: (options) ->
    super()
    @box = options.box

  render: ->
    @$el.html @template(box: @box)
    return @

  destroy: ->
    if confirm("delete?")
      @box.destroy()
      @remove()
