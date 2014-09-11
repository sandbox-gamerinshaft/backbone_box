class SApp.Views.ShowView extends Backbone.View
  template: JST["SApp/show"]
  className: "show"

  render: ->
    @$el.html @template()
    return @
