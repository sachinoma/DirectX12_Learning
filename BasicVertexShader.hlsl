#include"BasicShaderHeader.hlsli"

//�ϊ����܂Ƃ߂��\����
cbuffer cbuff0 : register(b0) //�萔�o�b�t�@
{
	matrix mat; //�ϊ��s��
}
//���_�V�F�[�_
Output BasicVS(float4 pos : POSITION, float2 uv : TEXCOORD)
{
	Output output; //�s�N�Z���V�F�[�_�ɓn���l
	output.svpos = mul(mat, pos);
	output.uv = uv;
	return output;
}