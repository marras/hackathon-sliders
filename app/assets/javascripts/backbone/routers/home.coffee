class Sliders.Routers.Home extends Backbone.Router

  initialize: ->
    @priorities = new Sliders.Collections.SpoofPriorities()
    window.coll = @priorities
    window.p1 = new Sliders.Models.SpoofPriority(value: 1, name: 'Project Coolness', obligatory: true)
    window.p2 = new Sliders.Models.SpoofPriority(value: 9, name: 'Money bejmy hajs', obligatory: true)
    window.up = true
    @prioritiesView = new Sliders.Views.PrioritiesView(priorities: @priorities)
    @priorities.add p1
    @priorities.add p2

    @priorities.fetch()

    setTimeout move, 10000

move = ->
  val = window.p1.get('value')
  if val>=10
    window.up = false
  if val<=0
    window.up = true
  diff = if window.up then 1 else -1
  window.p1.set(value: window.p1.get('value') + diff)
  window.coll.recalculateValues(p1)
  setTimeout move, 70
