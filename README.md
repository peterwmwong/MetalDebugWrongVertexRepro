# XCode Metal Debug Wrong Vertex Repro

When using XCode's Metal "Debug Shader" for a vertex shader for a simple rectangle (triangle strip with 4 vertices), the debugged vertex is different than the one selected.

## Reproduction Steps

1. git clone this repository
    - git clone git@github.com:peterwmwong/MetalDebugWrongVertexRepro.git
2. Open project in XCode
3. Update Project settings to assign team
    - "Signing & Capabilities" -> "Signing" -> "Team"
4. Build/Run application
5. Metal Frame Capture 1 Frame
6. Select "Debug Shader"
7. Select "Vertex" tab
8. Select Vertex 2
9. Observe actual Vertex ID used by shader debugger (value bound to `vertex_id`)

## Screen recording

![Debug selects wrong vertex](./wrong-vertex.gif)
[MOV video](./wrong-vertex.mov)