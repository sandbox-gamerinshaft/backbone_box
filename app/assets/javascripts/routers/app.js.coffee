class SApp.Routers.SAppRouter extends Backbone.Router
  routes:
    "index" : "index"
    "show:id"  : "show"
    ""      : "index"

  index: ->
    view = new SApp.Views.IndexView
    $('#app').html view.render().el
  show: (id)->
    view = new SApp.Views.ShowView(id : id)
    $('#app').html view.render().el
