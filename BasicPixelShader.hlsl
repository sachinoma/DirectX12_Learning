#include"BasicShaderHeader.hlsli"
Texture2D<float4> tex : register(t0); //テクスチャ
SamplerState smp : register(s0); //サンプラー

float4 BasicPS(Output input) : SV_TARGET
{
	/*return float4(tex.Sample(smp,input.uv));*/
	return float4(0,0,0,1);
}