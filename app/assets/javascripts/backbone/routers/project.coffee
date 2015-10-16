class Sliders.Routers.Project extends Backbone.Router

  initialize: ->
    @priorities = new Sliders.Collections.Priorities()
    @prioritiesView = new Sliders.Views.PrioritiesView(priorities: @priorities)

    @priorities.fetch()
