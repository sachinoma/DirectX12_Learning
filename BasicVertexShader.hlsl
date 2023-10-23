#include"BasicShaderHeader.hlsli"

//�ϊ����܂Ƃ߂��\����
cbuffer cbuff0 : register(b0) //�萔�o�b�t�@
{
	matrix mat; //�ϊ��s��
}

//���_�V�F�[�_���s�N�Z���V�F�[�_�ւ̂����Ɏg�p����
//�\����
//struct Output {
//	float4 svpos:SV_POSITION;//�V�X�e���p���_���W
//	float4 pos:POSITION;//�V�X�e���p���_���W
//	float4 normal:NORMAL0;//�@���x�N�g��
//	float4 vnormal:NORMAL1;//�@���x�N�g��
//	float2 uv:TEXCOORD;//UV�l
//	float3 ray:VECTOR;//�x�N�g��
//};

Output BasicVS(float4 pos : POSITION, float4 normal : NORMAL, float2 uv : TEXCOORD,
	min16uint2 boneno : BONE_NO, min16uint weight : WEIGHT)
{
	Output output; //�s�N�Z���V�F�[�_�ɓn���l
	output.svpos = mul(mat, pos);
	output.uv = uv;
	return output;
}

//���_�V�F�[�_
//Output BasicVS(float4 pos : POSITION, float2 uv : TEXCOORD)
//{
//	Output output; //�s�N�Z���V�F�[�_�ɓn���l
//	output.svpos = mul(mat, pos);
//	output.uv = uv;
//	return output;
//}