class Sliders.ColorEncoder
  constructor: (range, base = 0) ->
    @base = base
    @range = range

  getTheColor: (colorVal) ->
    val = colorVal - @base
    if val > 0
      myGreen = 255
      myRed = parseInt((@range - val) * 255 / @range)
    else
      myRed = 255
      myGreen = parseInt((@range + val) * 255 / @range)
    "rgb(" + myRed + "," + myGreen + ",0)"
