class Sliders.Models.Priority extends Backbone.Model
  url: ->
    if @isNew()
      Routes.priorities_path()
    else
      Routes.priority_path(@id)

  value: ->
    @get('value')

  name: ->
    @get('name')

  description: ->
    @get('description')

  changeable: ->
    !@get('obligatory')

class Sliders.Collections.Priorities extends Backbone.Collection
  model: Sliders.Models.Priority
  url: Routes.priorities_path()
