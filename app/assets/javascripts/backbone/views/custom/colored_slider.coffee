class Sliders.Views.ColoredSlider extends Sliders.Views.BaseView

  events:
    'click .remove' : 'removePriority'

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
    @priority.collection.on 'recalculated', @onRecalc, @
    @priority.on 'sync', @onRecalc, @
    @priority.on 'destroy', @destroyView, @

  onSlide: (ev, ui) ->
    val = ui.value
    @$(".value").html(val)
    @priority.setValue(ui.value) if ev.originalEvent
    #@refreshSwatch(val)

  refreshSwatch: (value) ->
    myColor = window.colorEncoder.getTheColor(value)
    @$(".ui-slider-range").css "background-color", myColor
    @$(".ui-state-default, .ui-widget-content .ui-state-default").css "background-color", myColor

  onChange: (ev, ui) ->
    return unless ev.originalEvent
    @priority.setValue(ui.value)
    @priority.collection.saveAll()

  onRecalc: ->
    val = @priority.value()
    @$(".value").html(val)
    @$slider.slider('value', val)
    @refreshSwatch(val)

  removePriority: ->
    @priority.destroy()
