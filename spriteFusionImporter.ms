// SpriteFusion tile map importer
//  (www.spritefusion.com) "The Easy-to-Use Tilemap Editor"

import "json"

// @public
// Creates a list of TileDisplays based off of a SpriteFusion json map
// @param {string} mapJson - path to map json file
// @param {string} spriteSheetImage - path to sprite sheet image
// @param {List<int>} cellSize - cell size for the tilemap [width, height]
// @returns {List<TileDisplay>} list of TileDisplays
createTileDisplays = function(mapJson, spriteSheetImage, cellSize = null)
    mapData = json.parse(file.open(mapJson).read)
    spriteSheet = file.loadImage(spriteSheetImage)
    displays = []
    for layer in mapData.layers
        td = new TileDisplay
        td.name = layer.name
        td.isCollider = layer.collider
        td.tileSet = spriteSheet
        if cellSize != null then td.cellSize = cellSize
        td.tileSetTileSize = mapData.tileSize
        td.extent = [mapData.mapWidth, mapData.mapHeight]
        offset = mapData.mapHeight - 1
        for tile in layer.tiles
            td.setCell tile.x, offset - tile.y, tile.id.val
        end for
        displays.push td
    end for
    return displays
end function