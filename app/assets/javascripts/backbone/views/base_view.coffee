class Sliders.Views.BaseView extends Backbone.View
  destroyView: ->
    @onDestroy?()
    @undelegateEvents()
    @$el.removeData().unbind()
    @remove()
    Backbone.View.prototype.remove.call(@)

  render: ->
    @$el.appendTo $(@parent)
    @$el.html @template()

  template: ->
