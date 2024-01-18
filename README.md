# MiniMicro SpriteFusion Tilemap Importer
### A simple script for importing [SpriteFusion](https://www.spritefusion.com/) json tilemaps into [MiniMicro](https://miniscript.org/MiniMicro/) programs
![sprite_fusion_screenshot](https://github.com/maxkratt/sprite-fusion-tilemap-loader/assets/60508288/b31dc192-3821-4b6b-a50b-84eb113d3ffb)
![mini_micro_screenshot](https://github.com/maxkratt/sprite-fusion-tilemap-loader/assets/60508288/d4591d51-dfa3-40cb-b915-c9bc68259d84)

The `createTileDisplays` function is given the paths to the `map.json` and `spritesheet` files and returns a list of TileDisplays which correspond to the tilemap layers. You can optionally provide the cell size for the tilemap as a list containing the width and height.
Each TileDisplay will have a `name` and `isCollider` field set from the tilemap.

Here is a quick example of how to use it:
```ruby
import "spriteFusionImporter"

displays = spriteFusionImporter.createTileDisplays("map.json", "spritesheet.png", [16, 16])
displays[0].install 5
```

There is an example folder that contains an exported tilemap and loads it into MiniMicro with the [example.ms](https://github.com/maxkratt/sprite-fusion-tilemap-loader/blob/main/example/example.ms) script. The original tilemap file is also included. The example tileset is created by [stealthix](https://twitter.com/stealthix_dev) and released under the [CC0 license](https://creativecommons.org/public-domain/cc0/)
