# MiniMicro SpriteFusion Tilemap Importer
A simple library for importing [SpriteFusion](https://www.spritefusion.com/) json tilemaps into [MiniMicro](https://miniscript.org/MiniMicro/) programs

The `createTileDisplays` function is given the paths to the `map.json` and `spritesheet` files and returns a list of TileDisplays which correspond to the tilemap layers. You can optionally provide the cell size for the tilemap as a list containing the width and height.
Each TileDisplay will have a `name` and `isCollider` field set from the tilemap.

Here is a quick example of how to use it:
```ruby
import "spriteFusionImporter"

displays = spriteFusionImporter.createTileDisplays("map.json", "spritesheet.png", [16, 16])
displays[0].install 5
```

There is an example folder that contains an exported tilemap and loads it into MiniMicro with the `example.ms` script. The original tilemap file is also included.