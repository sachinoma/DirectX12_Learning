#include"BasicShaderHeader.hlsli"
Texture2D<float4> tex : register(t0); //�e�N�X�`��
SamplerState smp : register(s0); //�T���v���[

float4 BasicPS(Output input) : SV_TARGET
{
	/*return float4(tex.Sample(smp,input.uv));*/
	return float4(0,0,0,1);
}