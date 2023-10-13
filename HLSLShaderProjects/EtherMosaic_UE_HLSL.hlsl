uv = frac(uv * 10);

float circleRadius = 0.33;

bool pattern = (int(length(uv - 0.5) / circleRadius) % 2) == 0;

return pattern ? float3(1, 0, 0) : float3(0, 1, 0);
