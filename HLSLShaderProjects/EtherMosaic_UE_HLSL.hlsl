// Checkerboard Scale/Tiling
uv = uv * 6.0;

// Adjust uv to range [0,1] within each tile
uv = frac(uv);

// Variable to store our result.
float3 result = float3(0, 0, 0); 

// Calculate the distance from the center of the tile (0.5, 0.5)
float distFromCenter = length(uv - 0.5);

// Oscillating circle distance based on time. This will cause the concentric circles to expand and contract.
float oscillatingDist = 0.5 + 0.3 * sin(time * 2.0);

// Using fmod for concentric circles. The modulo value determines the spacing between circles.
float circleMod = fmod(distFromCenter + oscillatingDist, 0.2);

// If within a certain thickness, set color to red
if (circleMod < 0.05) // 0.03 determines the thickness of the circles
{
    result = float3(1, 0, 0); 
}

// Output Result
return result;
