class Sliders.Models.Priority extends Backbone.Model
  url: ->
    if @isNew()
      Routes.priorities_path()
    else
      Routes.priority_path(@id)

  setValue: (value) ->
    @set(value: value)
    @collection.recalculateValues(@)

  value: ->
    Math.round(@get('value'))

  name: ->
    @get('name')

  description: ->
    @get('description')

  changeable: ->
    !@get('obligatory')

class Sliders.Collections.Priorities extends Backbone.Collection
  model: Sliders.Models.Priority
  url: Routes.priorities_path()

  recalculateValues: (priority) ->
    total = @length * 5.0 - priority.get('value')

    otherPriorities = _.filter @models, (p) ->
      p != priority

    sumOfOthers = _.reduce otherPriorities, (memo, p) ->
      memo + p.get('value')
    , 0

    factor = total / sumOfOthers

    _.each otherPriorities, (p) ->
      p.set(value: p.get('value') * factor)

    @saveAll()

  saveAll: ->
    _.each @models, (p) ->
      p.save()
