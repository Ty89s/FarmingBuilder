clear

display(5).mode = displayMode.tile
td = display(5)
td.tileSet = file.loadImage("/usr/Assets/tile set.png")
td.tileSetTileSize = 64
td.extent = [15, 10]  // columns, rows on screen
td.clear 4

td.setCell 4, 0, 1
td.setCell 5, 0, 1
td.setCell 6, 0, 1
td.setCell 5, 1, 1
td.setCell 14, 9, 1
td.setCell 13, 9, 1
td.setCell 12, 9, 1
td.setCell 14, 9, 1