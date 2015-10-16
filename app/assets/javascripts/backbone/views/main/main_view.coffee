class Sliders.Views.MainView extends Backbone.View

  el: 'body'

  initialize: ->
    $('.alert').delay(2500).slideUp 500, ->
        $(@).alert('close')
