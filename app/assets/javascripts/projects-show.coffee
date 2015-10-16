#= require jquery-ui/slider
#= require_tree ./support/

$ ->
  window.router = new Sliders.Routers.Project()
  window.colorEncoder = new Sliders.ColorEncoder(10)
