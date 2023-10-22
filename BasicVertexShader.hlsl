#include"BasicShaderHeader.hlsli"

//変換をまとめた構造体
cbuffer cbuff0 : register(b0) //定数バッファ
{
	matrix mat; //変換行列
}
//頂点シェーダ
Output BasicVS(float4 pos : POSITION, float2 uv : TEXCOORD)
{
	Output output; //ピクセルシェーダに渡す値
	output.svpos = mul(mat, pos);
	output.uv = uv;
	return output;
}