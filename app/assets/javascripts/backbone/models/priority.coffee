class Sliders.Models.Priority extends Backbone.Model



class Sliders.Collections.Priorities extends Backbone.Collection
  model: Sliders.Models.Priority
  url: Routes.priorities_path()
