# Backbone router
class Router extends Backbone.Router
  routes:
    "*args": "fallthrough"
   
  fallthrough: (args) ->
    $('iframe').attr( 'src', "http://www.socrench.us/i/#{window.location.host}#{args}")

Router = new Router()

Meteor.startup( ->
  if top.location.href != window.location.href
    top.location.href = window.location.href
  
  Backbone.history.start( pushState: true )
)