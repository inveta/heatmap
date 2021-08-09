
float X = 0.;
for (int i = 0; i < PointCount; i++) {
  float3 p = Texture2DSample(Tex, TexSampler, float2((i + .5) / PointCount, 0));
  float d = length((uv - p.xy) * float2(xScale, 1));
  float x = pow(max(p.z - d, 0), 2);
  X += x;
}

alpha = 1;

if (X > thres.z) {
  return float3(1, 0, 0);
} else if (X > thres.y) {
  return float3(1, .6, 0);
} else if (X > thres.x) {
  return float3(0, 1, 0);
} else {
  alpha = 0;
  return float3(0, 0, 0);
}
