import "spriteFusionImporter"

displays = spriteFusionImporter.createTileDisplays("map.json", "spritesheet.png", [16, 16])
displays[0].install 5
displays[1].install 6
displays[2].install 7