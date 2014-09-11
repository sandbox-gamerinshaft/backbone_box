class SApp.Routers.SAppRouter extends Backbone.Router
  routes:
    "index" : "index"
    "show"  : "show"
    ""      : "index"

  index: ->
    view = new SApp.Views.IndexView
    $('#app').html view.render().el
  show: ->
    view = new SApp.Views.ShowView
    $('#app').html view.render().el
