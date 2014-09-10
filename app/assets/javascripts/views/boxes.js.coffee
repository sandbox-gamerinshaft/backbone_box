BBBox.Views.Boxes || = {}
class BBBox.Views.Boxes.BoxView extends Backbone.View
  template: JST["boxes/box"]
  className: "btn btn-default"

  constructor: (options) ->
    super()
    @box = options.box

  render: ->
    @$el.html @template(box: @box)
    return @
