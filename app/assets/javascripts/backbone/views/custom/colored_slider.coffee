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
      slide: @onSlide.context(@)
      change: @onChange.context(@)
    @refreshSwatch(@priority.value())

  onSlide: (ev, ui) ->
    val = ui.value
    @$(".value").html(val)
    @refreshSwatch(val)

  refreshSwatch: (value) ->
    myColor = window.colorEncoder.getTheColor(value)
    @$(".ui-slider-range").css "background-color", myColor
    @$(".ui-state-default, .ui-widget-content .ui-state-default").css "background-color", myColor

  onChange: (ev, ui) ->
    @priority.save(value: ui.value)
