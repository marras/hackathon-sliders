class Sliders.Views.PrioritiesView extends Sliders.Views.BaseView
  el: '#priorities'

  events:
    'click .add' : 'addNewPriority'

  initialize: (options) ->
    @priorities = options.priorities
    @priorities.bind 'add', @render, @
    @sliderViews = []

  render: (priority) ->
    $slider = $(JST['priority_slider'](priority: priority))
    @sliderViews.push new Sliders.Views.ColoredSlider(el: $slider, priority: priority)
    @$('#sliders').append $slider

  addNewPriority: ->
    name = $('#new-priority input').val()
    priority = new Sliders.Models.Priority
      name: name
      value: 5.0
      obligatory: false
      description: '*'
    @priorities.add priority
    $('#new-priority input').val('')
