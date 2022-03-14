#include <metal_stdlib>

using namespace metal;

struct VertexOut
{
    float4 position [[position]];
};

vertex VertexOut
vertexShader(uint vertexID [[ vertex_id ]])
{
    const float2 size = {2.0, 2.0};
    const float2 origin = {-1.0, 1.0};
    switch (vertexID) {
        // Top Left corner
        case 0: return { float4(origin + float2(     0,       0), 0, 1) };
        // Top Right corner
        case 1: return { float4(origin + float2(size.x,       0), 0, 1) };
        // Bottom Left corner
        case 2: return { float4(origin + float2(     0, -size.y), 0, 1) };
        // Bottom Right corner
        case 3: return { float4(origin + float2(size.x, -size.y), 0, 1) };
    }
    
    // Shouldn't get here. vertexCount is 4 should ensure 0 <= vertexID <= 3.
    return { float4(0) };
}

fragment float4
fragmentShader(VertexOut in [[ stage_in ]])
{
    return float4(0.0, 1.0, 0.0, 1.0);
}
