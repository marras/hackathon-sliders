class Sliders.Views.ColoredSlider extends Sliders.Views.BaseView

  initialize: (options) ->
    @priority = options.priority
    @$slider = @$('.slider')
    @$slider.slider
      orientation: "horizontal"
      range: 'min'
      max: 10
      min: 0
      value: @priority.value()
      slide: @refreshSwatch.context(@)
      change: @refreshSwatch.context(@)
    @refreshSwatch()

  refreshSwatch: ->
    value = @value()
    myColor = window.colorEncoder.getTheColor(value)
    @$(".ui-slider-range").css "background-color", myColor
    @$(".ui-state-default, .ui-widget-content .ui-state-default").css "background-color", myColor
    @$(".friendship-quality").html(value)

  zero: ->
    @$slider.slider('value', 0)

  value: ->
    @$slider.slider('value')
