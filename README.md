# Heat Map

Heatmap generator for Unreal Engine, where the heatmap is essentially a material for decal projection.

## Demo

![](./Resources/demo.png)

↓↓↓

![](./Resources/icon447.png)

## Heat Points

Parameter `heat points` is an Array of `vector3`, standing for array of heat points, every vector3's X,Y,Z channel stands for the heat point's position in UV space and its intensity:

- X: X coordinate in UV space
- Y: Y coordinate in UV space
- Z: radius for this point, in the range of 0.1 ~ 0.5

## X-Axis Scale

Parameter `X Scale` is a `scalar` for making a rectangle instead of square, it's value equals to width/height, default to 1.

## Thresholds

Parameter `thresholds` is a `vector3` standing for how wide each "color ring" occupy around a heat point, each channel stands for:

- X: threshold between transparent and green (boundary)
- Y: threshold between green and orange (middle)
- Z: threshold between orange and red (center)

## Optimization

To make better visualization of heatmap, turn on flat shading or unlit mode, even orthographic camera can help highlight the heatmap.

## License

[MIT License](./License)
