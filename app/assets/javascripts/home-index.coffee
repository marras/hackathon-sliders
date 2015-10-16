#= require jquery-ui/slider
#= require_tree ./support/

$ ->
  window.colorEncoder = new Sliders.ColorEncoder(5, 5)
  window.router = new Sliders.Routers.Home()
