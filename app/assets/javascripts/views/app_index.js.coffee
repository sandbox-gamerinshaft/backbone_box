class SApp.Views.IndexView extends Backbone.View
  template: JST["SApp/index"]
  className: "index"

  render: ->
    @$el.html @template()
    return @

