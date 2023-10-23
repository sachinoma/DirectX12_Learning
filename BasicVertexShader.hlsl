#include"BasicShaderHeader.hlsli"

//変換をまとめた構造体
cbuffer cbuff0 : register(b0) //定数バッファ
{
	matrix mat; //変換行列
}

//頂点シェーダ→ピクセルシェーダへのやり取りに使用する
//構造体
//struct Output {
//	float4 svpos:SV_POSITION;//システム用頂点座標
//	float4 pos:POSITION;//システム用頂点座標
//	float4 normal:NORMAL0;//法線ベクトル
//	float4 vnormal:NORMAL1;//法線ベクトル
//	float2 uv:TEXCOORD;//UV値
//	float3 ray:VECTOR;//ベクトル
//};

Output BasicVS(float4 pos : POSITION, float4 normal : NORMAL, float2 uv : TEXCOORD,
	min16uint2 boneno : BONE_NO, min16uint weight : WEIGHT)
{
	Output output; //ピクセルシェーダに渡す値
	output.svpos = mul(mat, pos);
	output.uv = uv;
	return output;
}

//頂点シェーダ
//Output BasicVS(float4 pos : POSITION, float2 uv : TEXCOORD)
//{
//	Output output; //ピクセルシェーダに渡す値
//	output.svpos = mul(mat, pos);
//	output.uv = uv;
//	return output;
//}