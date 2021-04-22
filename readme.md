# qml-tiling-boxes

i was surprised that we can make a simple box tiling thing with like zero maths and javascript.

![screencap](screencap.gif?raw=true)

- every box simply has `anchors.fill:parent`
- a split is 2 boxes anchored to draggable handler between them
- use loader to load new splits/boxes

well, i didn't bother to implement any other features than adding splits, so dunno how complicated the rest of the features would become...
