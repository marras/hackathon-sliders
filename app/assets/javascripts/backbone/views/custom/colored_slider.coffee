class Sliders.Views.ColoredSlider extends Sliders.Views.BaseView

  el: '.coloredSlider'

  initialize: ->
    @$slider = @$('.slider')
    @$slider.slider
      orientation: "horizontal"
      range: 'min'
      max: @range
      min: -@range
      value: 0
      slide: @refreshSwatch.context(@)
      change: @refreshSwatch.context(@)
    @refreshSwatch()

  refreshSwatch: ->
    value = @value()
    myColor = H.colorEncoder.getTheColor(value)
    @$(".ui-slider-range").css "background-color", myColor
    @$(".ui-state-default, .ui-widget-content .ui-state-default").css "background-color", myColor
    @$(".friendship-quality").html(value)

  zero: ->
    @$slider.slider('value', 0)

  value: ->
    @$slider.slider('value')