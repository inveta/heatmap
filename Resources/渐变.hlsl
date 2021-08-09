const float intensity = 1.7;
const float PointRadius = .3;

float X = 0.;
for (int i = 0; i < PointCount; i++){
   float3 v = Texture2DSample(Tex, TexSampler, float2((i + .5) / PointCount, 0));
   float x = (1. - length((uv - v.xy) * ratio) / PointRadius) * v.z;
   X += pow(max(x, 0), 2);
}

X = min(X * intensity, 1);
alpha = X * X * 3;
float green = cos(X * 3.141592) *.4 + .4;
return float3(1, green, 0);
