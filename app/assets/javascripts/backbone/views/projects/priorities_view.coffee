class Sliders.Views.PrioritiesView extends Sliders.Views.BaseView
  el: '#priorities'

  initialize: (options) ->
    @priorities = options.priorities
    @priorities.bind 'add', @render, @
    @sliderViews = []

  render: (priority) ->
    $slider = $(JST['priority_slider'](priority: priority))
    @sliderViews.push new Sliders.Views.ColoredSlider(el: $slider, priority: priority)
    @$el.append $slider
