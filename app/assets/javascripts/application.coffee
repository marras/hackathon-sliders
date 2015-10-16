#= require jquery
#= require jquery_ujs
#= require bootstrap-sprockets
#= require hamlcoffee
#= require js-routes
#= require_self
#= require underscore
#= require backbone
#= require_tree ./backbone
#= require common

window.Sliders = {
  Models: {}
  Views: {}
  Collections: {}
  Routers: {}
}

Function.prototype.context = (context) ->
  =>
    @apply(context, arguments)
