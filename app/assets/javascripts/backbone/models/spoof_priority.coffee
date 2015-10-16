class Sliders.Models.SpoofPriority extends Sliders.Models.Priority
  url: ->
    null

  sync: ->

class Sliders.Collections.SpoofPriorities extends Sliders.Collections.Priorities
  model: Sliders.Models.SpoofPriority
  url: null

  sync: ->
