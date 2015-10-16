class Sliders.ColorEncoder
  constructor: (range) ->
    @range = range

  getTheColor: (colorVal) ->
    if colorVal > 0
      myGreen = 255
      myRed = parseInt((@range - colorVal) * 255 / @range)
    else
      myRed = 255
      myGreen = parseInt((@range + colorVal) * 255 / @range)
    "rgb(" + myRed + "," + myGreen + ",0)"
