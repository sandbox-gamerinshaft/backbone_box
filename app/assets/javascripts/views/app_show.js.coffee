class SApp.Views.ShowView extends Backbone.View
  template: JST["SApp/show"]
  className: "show"

  initialize: (options)->
    @id = options.id

  render: ->
    @$el.html @template(id: @id)
    return @
