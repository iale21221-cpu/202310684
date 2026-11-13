#ifndef MAINLIGHT_INCLUDED
#define MAINLIGHT_INCLUDED

void MainLight_float(out float3 Direction, out float3 Color)
{
#ifdef SHADERGRAPH_PREVIEW
    Direction = normalize(float3(0.5, 0.5, 0.25));
    Color = float3(1, 1, 1);
#else
    Light light = GetMainLight();
    Direction = light.direction;
    Color = light.color;
#endif
}

void MainLight_half(out half3 Direction, out half3 Color)
{
#ifdef SHADERGRAPH_PREVIEW
    Direction = normalize(half3(0.5, 0.5, 0.25));
    Color = half3(1, 1, 1);
#else
    Light light = GetMainLight();
    Direction = light.direction;
    Color = light.color;
#endif
}
#endif