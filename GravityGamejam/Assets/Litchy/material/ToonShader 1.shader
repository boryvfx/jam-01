// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Toon"
{
	Properties
	{
		_MainTex("MainTex", 2D) = "white" {}
		_PBR_Color("PBR_Color", Color) = (0.4622642,0.4622642,0.4622642,0)
		_MainColor("MainColor", Color) = (1,0.7027648,0,0)
		_Color_Intensity("Color_Intensity", Float) = 1
		[HDR]_Indirect_Light("Indirect_Light", Float) = 0
		_SpecularSize("SpecularSize", Float) = 4
		_SpecularSmooth("SpecularSmooth", Vector) = (0.9,1,0,0)
		[HDR]_ShardEdge("ShardEdge", Float) = 0.1
		[HDR]_RimColor("RimColor", Color) = (0.579394,1,0,1)
		_LightRimAmount("LightRimAmount", Float) = 0.7
		_LightRimSharp("LightRimSharp", Vector) = (-0.1,0.1,0,0)
		[HDR]_RimShadow("RimShadow", Color) = (0.9742622,0.2254175,0,1)
		_ShadowRimAmount("ShadowRimAmount", Float) = 0.74
		_ShadowRimSharp("ShadowRimSharp", Vector) = (-0.33,1.19,0,0)
		[HDR]_FresnelColorOut("FresnelColorOut", Color) = (1,0.8481841,0.4103774,0)
		_FresnelSize("FresnelSize", Float) = 1.14
		_FresnelPos("FresnelPos", Vector) = (-10,10,0,0)
		[HDR]_FresnelColorIn("FresnelColorIn", Color) = (1,0.1457692,0,0)
		_FresnelInSize("FresnelInSize", Float) = 1.14
		_OutlineSize("OutlineSize", Float) = 0.01
		_OutlineColor("OutlineColor", Color) = (0,0,0,0)
		_MatCapStrenght("MatCapStrenght", Float) = 0
		_MatCap("MatCap", 2D) = "white" {}
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ }
		Cull Front
		CGPROGRAM
		#pragma target 3.0
		#pragma surface outlineSurf Outline nofog  keepalpha noshadow noambient novertexlights nolightmap nodynlightmap nodirlightmap nometa noforwardadd vertex:outlineVertexDataFunc 
		void outlineVertexDataFunc( inout appdata_full v, out Input o )
		{
			UNITY_INITIALIZE_OUTPUT( Input, o );
			float outlineVar = _OutlineSize;
			v.vertex.xyz += ( v.normal * outlineVar );
		}
		inline half4 LightingOutline( SurfaceOutput s, half3 lightDir, half atten ) { return half4 ( 0,0,0, s.Alpha); }
		void outlineSurf( Input i, inout SurfaceOutput o )
		{
			o.Emission = _OutlineColor.rgb;
		}
		ENDCG
		

		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" "IsEmissive" = "true"  }
		Cull Back
		CGINCLUDE
		#include "UnityShaderVariables.cginc"
		#include "UnityCG.cginc"
		#include "UnityPBSLighting.cginc"
		#include "Lighting.cginc"
		#pragma target 3.0
		struct Input
		{
			float2 uv_texcoord;
			float3 worldNormal;
			float3 worldPos;
			float3 viewDir;
		};

		uniform float4 _PBR_Color;
		uniform sampler2D _MainTex;
		uniform float4 _MainTex_ST;
		uniform sampler2D _MatCap;
		uniform float _MatCapStrenght;
		uniform float _Color_Intensity;
		uniform float4 _MainColor;
		uniform float _ShardEdge;
		uniform float _Indirect_Light;
		uniform float2 _SpecularSmooth;
		uniform float _SpecularSize;
		uniform float _ShadowRimAmount;
		uniform float2 _ShadowRimSharp;
		uniform float4 _RimShadow;
		uniform float _LightRimAmount;
		uniform float2 _LightRimSharp;
		uniform float4 _RimColor;
		uniform float _FresnelSize;
		uniform float4 _FresnelColorOut;
		uniform float2 _FresnelPos;
		uniform float _FresnelInSize;
		uniform float4 _FresnelColorIn;
		uniform float _OutlineSize;
		uniform float4 _OutlineColor;

		void vertexDataFunc( inout appdata_full v, out Input o )
		{
			UNITY_INITIALIZE_OUTPUT( Input, o );
			v.vertex.xyz += 0;
		}

		void surf( Input i , inout SurfaceOutputStandardSpecular o )
		{
			float2 uv_MainTex = i.uv_texcoord * _MainTex_ST.xy + _MainTex_ST.zw;
			float4 tex2DNode201 = tex2D( _MainTex, uv_MainTex );
			o.Albedo = ( _PBR_Color * tex2DNode201 ).rgb;
			float3 ase_worldNormal = i.worldNormal;
			float3 ase_worldPos = i.worldPos;
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = normalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			float dotResult21 = dot( ase_worldNormal , ase_worldlightDir );
			float smoothstepResult44 = smoothstep( 0.0 , _ShardEdge , dotResult21);
			float3 ase_normWorldNormal = normalize( ase_worldNormal );
			float3 normalizeResult4_g1 = normalize( ( i.viewDir + ase_worldlightDir ) );
			float dotResult97 = dot( ase_normWorldNormal , normalizeResult4_g1 );
			float smoothstepResult106 = smoothstep( _SpecularSmooth.x , _SpecularSmooth.y , pow( ( smoothstepResult44 * dotResult97 * 1.09 ) , _SpecularSize ));
			float dotResult110 = dot( i.viewDir , ase_worldNormal );
			float temp_output_115_0 = ( 1.0 - dotResult110 );
			float Jade181 = smoothstepResult44;
			float smoothstepResult146 = smoothstep( ( _ShadowRimAmount + _ShadowRimSharp.x ) , ( _ShadowRimAmount + _ShadowRimSharp.y ) , ( temp_output_115_0 * ( 1.0 - Jade181 ) ));
			float4 temp_cast_3 = (( _LightRimAmount + _LightRimSharp.x )).xxxx;
			float4 temp_cast_4 = (( _LightRimAmount + _LightRimSharp.y )).xxxx;
			float dotResult135 = dot( ase_worldNormal , ase_worldlightDir );
			float4 smoothstepResult117 = smoothstep( temp_cast_3 , temp_cast_4 , abs( ( ( ( dotResult135 * temp_output_115_0 ) * smoothstepResult44 ) * _RimColor ) ));
			float3 ase_worldViewDir = normalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float fresnelNdotV149 = dot( ase_worldNormal, ase_worldViewDir );
			float fresnelNode149 = ( 0.0 + _FresnelSize * pow( 1.0 - fresnelNdotV149, 5.0 ) );
			float smoothstepResult173 = smoothstep( _FresnelPos.x , _FresnelPos.y , Jade181);
			float fresnelNdotV151 = dot( ase_worldNormal, ase_worldViewDir );
			float fresnelNode151 = ( 0.0 + _FresnelInSize * pow( 1.0 - fresnelNdotV151, 0.9 ) );
			o.Emission = ( ( tex2D( _MatCap, ( 0.5 + ( 0.5 * (mul( UNITY_MATRIX_V, float4( ase_worldNormal , 0.0 ) ).xyz).xy ) ) ) * _MatCapStrenght ) + ( ( ( ( ( _Color_Intensity * ( tex2DNode201 * _MainColor ) ) * ( smoothstepResult44 + _Indirect_Light + smoothstepResult106 ) ) + ( smoothstepResult146 * _RimShadow ) + smoothstepResult117 ) + ( ( fresnelNode149 * _FresnelColorOut ) * smoothstepResult173 ) ) + ( ( 1.0 - fresnelNode151 ) * _FresnelColorIn ) ) ).rgb;
			o.Alpha = 1;
		}

		ENDCG
		CGPROGRAM
		#pragma surface surf StandardSpecular keepalpha fullforwardshadows vertex:vertexDataFunc 

		ENDCG
		Pass
		{
			Name "ShadowCaster"
			Tags{ "LightMode" = "ShadowCaster" }
			ZWrite On
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma target 3.0
			#pragma multi_compile_shadowcaster
			#pragma multi_compile UNITY_PASS_SHADOWCASTER
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#include "HLSLSupport.cginc"
			#if ( SHADER_API_D3D11 || SHADER_API_GLCORE || SHADER_API_GLES || SHADER_API_GLES3 || SHADER_API_METAL || SHADER_API_VULKAN )
				#define CAN_SKIP_VPOS
			#endif
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			struct v2f
			{
				V2F_SHADOW_CASTER;
				float2 customPack1 : TEXCOORD1;
				float3 worldPos : TEXCOORD2;
				float3 worldNormal : TEXCOORD3;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			v2f vert( appdata_full v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_INITIALIZE_OUTPUT( v2f, o );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				Input customInputData;
				vertexDataFunc( v, customInputData );
				float3 worldPos = mul( unity_ObjectToWorld, v.vertex ).xyz;
				half3 worldNormal = UnityObjectToWorldNormal( v.normal );
				o.worldNormal = worldNormal;
				o.customPack1.xy = customInputData.uv_texcoord;
				o.customPack1.xy = v.texcoord;
				o.worldPos = worldPos;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET( o )
				return o;
			}
			half4 frag( v2f IN
			#if !defined( CAN_SKIP_VPOS )
			, UNITY_VPOS_TYPE vpos : VPOS
			#endif
			) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				Input surfIN;
				UNITY_INITIALIZE_OUTPUT( Input, surfIN );
				surfIN.uv_texcoord = IN.customPack1.xy;
				float3 worldPos = IN.worldPos;
				half3 worldViewDir = normalize( UnityWorldSpaceViewDir( worldPos ) );
				surfIN.viewDir = worldViewDir;
				surfIN.worldPos = worldPos;
				surfIN.worldNormal = IN.worldNormal;
				SurfaceOutputStandardSpecular o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutputStandardSpecular, o )
				surf( surfIN, o );
				#if defined( CAN_SKIP_VPOS )
				float2 vpos = IN.pos;
				#endif
				SHADOW_CASTER_FRAGMENT( IN )
			}
			ENDCG
		}
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=16700
-2108;95;1906;1051;-576.2265;3606.992;2.627088;True;True
Node;AmplifyShaderEditor.CommentaryNode;51;-2428.905,-2538.398;Float;False;4157.349;795.6365;Basic Toon ;9;42;40;85;48;21;2;20;182;201;;0.221679,1,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;177;-1617.746,-1068.912;Float;False;2908.723;853.8663;RimLight;17;111;134;110;133;115;130;129;136;128;127;140;122;121;131;117;135;112;;1,0.8664268,0,1;0;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;2;-2383.814,-2009.244;Float;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldNormalVector;20;-2354.795,-2195.201;Float;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.CommentaryNode;182;-1584.531,-2064.067;Float;False;306;303;Jade;1;44;;1,0,0,1;0;0
Node;AmplifyShaderEditor.DotProductOpNode;21;-1916.257,-2119.955;Float;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;111;-1519.233,-539.0085;Float;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;48;-1900.106,-1869.094;Float;False;Property;_ShardEdge;ShardEdge;7;1;[HDR];Create;True;0;0;False;0;0.1;0.1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;112;-1567.746,-394.046;Float;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.CommentaryNode;108;-830.9907,-1625.968;Float;False;1660.885;500.5837;Specular;9;91;98;102;97;78;101;107;100;106;;1,0.808957,0,1;0;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;134;-1314.47,-832.9557;Float;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;110;-1253.553,-450.7565;Float;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;98;-757.254,-1512.057;Float;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SmoothstepOpNode;44;-1534.531,-2014.067;Float;True;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0.1;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;133;-1285.451,-1018.912;Float;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.FunctionNode;91;-631.7155,-1378.103;Float;False;Blinn-Phong Half Vector;-1;;1;91a149ac9d615be429126c95e20753ce;0;0;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;135;-788.474,-862.3441;Float;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;102;-325.7348,-1328.354;Float;False;Constant;_Float0;Float 0;9;0;Create;True;0;0;False;0;1.09;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;181;-1282.418,-1602.885;Float;False;Jade;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;97;-312.0958,-1493.057;Float;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;178;-1464.737,-165.454;Float;False;2756.305;578.6748;ShadowRim;10;119;146;118;141;144;145;147;148;142;184;;0,0.8253398,1,1;0;0
Node;AmplifyShaderEditor.OneMinusNode;115;-995.033,-580.0314;Float;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;198;1412.614,-3219.918;Float;False;2197.917;493.698;MatCap;10;185;186;187;188;189;190;191;192;196;197;;0.5235849,0.7452594,1,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;130;-416.6385,-728.2176;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;184;-524.9388,249.6456;Float;False;181;Jade;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;85;-661.5052,-2459.513;Float;False;1245.97;444.4934;Base Color;4;29;28;27;199;;1,0.07075471,0.07075471,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;101;-50.38916,-1515.819;Float;True;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;78;51.21138,-1240.384;Float;False;Property;_SpecularSize;SpecularSize;5;0;Create;True;0;0;False;0;4;2.84;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;148;162.3539,23.17674;Float;False;Property;_ShadowRimAmount;ShadowRimAmount;12;0;Create;True;0;0;False;0;0.74;0.62;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;27;-451.8365,-2210.02;Float;False;Property;_MainColor;MainColor;2;0;Create;True;0;0;False;0;1,0.7027648,0,0;0.544269,1,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;136;-89.4841,-726.4965;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;129;-101.0238,-547.1181;Float;False;Property;_RimColor;RimColor;8;1;[HDR];Create;True;0;0;False;0;0.579394,1,0,1;0.2313532,1,0,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector2Node;147;223.3695,257.9308;Float;False;Property;_ShadowRimSharp;ShadowRimSharp;13;0;Create;True;0;0;False;0;-0.33,1.19;-0.39,1.53;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.CommentaryNode;179;1795.733,-1470.394;Float;False;1540.583;1203.997;Comment;9;174;173;161;156;155;149;159;180;183;;1,0.9496023,0,1;0;0
Node;AmplifyShaderEditor.OneMinusNode;142;-306.575,176.0783;Float;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;185;1462.614,-3025.848;Float;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.PowerNode;100;339.5514,-1512.521;Float;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;107;409.4046,-1401.208;Float;False;Property;_SpecularSmooth;SpecularSmooth;6;0;Create;True;0;0;False;0;0.9,1;1.22,1.25;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.ViewMatrixNode;186;1543.325,-3168.749;Float;False;0;1;FLOAT4x4;0
Node;AmplifyShaderEditor.SamplerNode;201;-661.5167,-2408.644;Float;True;Property;_MainTex;MainTex;0;0;Create;True;0;0;False;0;None;3502191c9a319e644a83c93cea7565c0;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;140;508.4126,-712.6027;Float;False;Property;_LightRimAmount;LightRimAmount;9;0;Create;True;0;0;False;0;0.7;0.61;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;199;-202.4044,-2313.952;Float;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Vector2Node;127;540.6594,-565.9786;Float;False;Property;_LightRimSharp;LightRimSharp;10;0;Create;True;0;0;False;0;-0.1,0.1;-0.49,0.72;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;128;206.9394,-727.9548;Float;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;187;1802.511,-3072.538;Float;False;2;2;0;FLOAT4x4;0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;42;765.1649,-1869.933;Float;False;Property;_Indirect_Light;Indirect_Light;4;1;[HDR];Create;True;0;0;False;0;0;0.26;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;106;629.8943,-1513.773;Float;False;3;0;FLOAT;0;False;1;FLOAT;0.9;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;159;1898.152,-1356.272;Float;False;Property;_FresnelSize;FresnelSize;15;0;Create;True;0;0;False;0;1.14;2.53;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;145;481.3265,-11.93542;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;141;-38.02423,90.85852;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;28;86.17682,-2343.679;Float;False;Property;_Color_Intensity;Color_Intensity;3;0;Create;True;0;0;False;0;1;0.22;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;180;1895.734,-765.1183;Float;False;1067.958;467.7528;FresnelIn;5;154;157;152;151;160;;0,0.6946495,1,1;0;0
Node;AmplifyShaderEditor.SimpleAddOpNode;144;507.9809,169.5788;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.AbsOpNode;131;557.2034,-822.2525;Float;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SmoothstepOpNode;146;813.6827,84.86581;Float;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;84;2072.5,-2247.409;Float;False;305;295;Add Color;1;30;;0.4746089,1,0,1;0;0
Node;AmplifyShaderEditor.FresnelNode;149;2137.751,-1420.394;Float;False;Standard;WorldNormal;ViewDir;False;5;0;FLOAT3;0,0,1;False;4;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;160;1908.052,-644.1209;Float;False;Property;_FresnelInSize;FresnelInSize;18;0;Create;True;0;0;False;0;1.14;0.38;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;122;822.2707,-585.3307;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;118;-1364.737,121.3135;Float;False;Property;_RimShadow;RimShadow;11;1;[HDR];Create;True;0;0;False;0;0.9742622,0.2254175,0,1;1.078857,0,2.640083,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;121;795.6165,-766.8448;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;183;2066.29,-1051.522;Float;False;181;Jade;1;0;OBJECT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;40;1129.445,-1965.556;Float;True;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;189;2159.999,-3169.918;Float;False;Constant;_Float1;Float 1;20;0;Create;True;0;0;False;0;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;188;2025.461,-3043.067;Float;False;True;True;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;174;2182.072,-925.9803;Float;False;Property;_FresnelPos;FresnelPos;16;0;Create;True;0;0;False;0;-10,10;-0.82,0.7;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.ColorNode;156;2140.403,-1243.158;Float;False;Property;_FresnelColorOut;FresnelColorOut;14;1;[HDR];Create;True;0;0;False;0;1,0.8481841,0.4103774,0;0.1209493,1,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;29;403.0304,-2220.821;Float;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;138;2564.343,-2416.864;Float;False;286.0001;303;Add Rim;1;120;;0.4746089,1,0,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;155;2443.393,-1402.832;Float;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SmoothstepOpNode;117;1090.977,-847.6194;Float;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;1,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FresnelNode;151;2110.64,-706.9825;Float;False;Standard;WorldNormal;ViewDir;False;5;0;FLOAT3;0,0,1;False;4;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0.9;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;119;1118.712,111.2729;Float;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SmoothstepOpNode;173;2405.771,-1046.07;Float;False;3;0;FLOAT;0;False;1;FLOAT;-10;False;2;FLOAT;10;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;190;2384.796,-3056.713;Float;True;2;2;0;FLOAT;0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;30;2124.939,-2196.413;Float;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;152;2467.325,-703.8901;Float;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;176;2943.736,-2249.563;Float;False;613.5059;306.8149;Add Fresnel;2;150;153;;0.4746089,1,0,1;0;0
Node;AmplifyShaderEditor.ColorNode;157;2527.305,-501.4671;Float;False;Property;_FresnelColorIn;FresnelColorIn;17;1;[HDR];Create;True;0;0;False;0;1,0.1457692,0,0;0.0471698,0.01994148,0.01535244,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;191;2775.034,-3159.667;Float;False;2;2;0;FLOAT;0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;161;2728.966,-1262.946;Float;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;120;2617.197,-2344.119;Float;True;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;86;1835.763,-2710.308;Float;False;522.2163;377.9639;PBR color;2;33;202;;1,0,0.669589,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;154;2757.01,-712.2198;Float;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;197;3154.013,-2841.22;Float;False;Property;_MatCapStrenght;MatCapStrenght;21;0;Create;True;0;0;False;0;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;192;2959.545,-3143.009;Float;True;Property;_MatCap;MatCap;22;0;Create;True;0;0;False;0;None;984f84562b5743a4dad72ab6cf4bf033;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;150;2993.736,-2199.563;Float;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;175;3428.382,-1655.301;Float;False;575.2683;429.9999;Outline;3;168;165;167;;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleAddOpNode;153;3322.242,-2195.748;Float;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;168;3507.382,-1340.301;Float;False;Property;_OutlineSize;OutlineSize;19;0;Create;True;0;0;False;0;0.01;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;196;3454.345,-2918.194;Float;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;167;3478.382,-1605.301;Float;False;Property;_OutlineColor;OutlineColor;20;0;Create;True;0;0;False;0;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;33;1895.763,-2650.308;Float;False;Property;_PBR_Color;PBR_Color;1;0;Create;True;0;0;False;0;0.4622642,0.4622642,0.4622642,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;193;3872.659,-2463.522;Float;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.OutlineNode;165;3753.65,-1511.954;Float;False;0;True;None;0;0;Front;3;0;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;202;2153.396,-2544.451;Float;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;32;4289.259,-2532.127;Float;False;True;2;Float;ASEMaterialInspector;0;0;StandardSpecular;Toon;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Opaque;0.5;True;True;0;False;Opaque;;Geometry;All;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;0;0;False;-1;0;False;-1;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;False;0;0;False;-1;-1;0;False;-1;0;0;0;False;0.1;False;-1;0;False;-1;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;21;0;20;0
WireConnection;21;1;2;0
WireConnection;110;0;111;0
WireConnection;110;1;112;0
WireConnection;44;0;21;0
WireConnection;44;2;48;0
WireConnection;135;0;133;0
WireConnection;135;1;134;0
WireConnection;181;0;44;0
WireConnection;97;0;98;0
WireConnection;97;1;91;0
WireConnection;115;0;110;0
WireConnection;130;0;135;0
WireConnection;130;1;115;0
WireConnection;101;0;44;0
WireConnection;101;1;97;0
WireConnection;101;2;102;0
WireConnection;136;0;130;0
WireConnection;136;1;44;0
WireConnection;142;0;184;0
WireConnection;100;0;101;0
WireConnection;100;1;78;0
WireConnection;199;0;201;0
WireConnection;199;1;27;0
WireConnection;128;0;136;0
WireConnection;128;1;129;0
WireConnection;187;0;186;0
WireConnection;187;1;185;0
WireConnection;106;0;100;0
WireConnection;106;1;107;1
WireConnection;106;2;107;2
WireConnection;145;0;148;0
WireConnection;145;1;147;1
WireConnection;141;0;115;0
WireConnection;141;1;142;0
WireConnection;144;0;148;0
WireConnection;144;1;147;2
WireConnection;131;0;128;0
WireConnection;146;0;141;0
WireConnection;146;1;145;0
WireConnection;146;2;144;0
WireConnection;149;2;159;0
WireConnection;122;0;140;0
WireConnection;122;1;127;2
WireConnection;121;0;140;0
WireConnection;121;1;127;1
WireConnection;40;0;44;0
WireConnection;40;1;42;0
WireConnection;40;2;106;0
WireConnection;188;0;187;0
WireConnection;29;0;28;0
WireConnection;29;1;199;0
WireConnection;155;0;149;0
WireConnection;155;1;156;0
WireConnection;117;0;131;0
WireConnection;117;1;121;0
WireConnection;117;2;122;0
WireConnection;151;2;160;0
WireConnection;119;0;146;0
WireConnection;119;1;118;0
WireConnection;173;0;183;0
WireConnection;173;1;174;1
WireConnection;173;2;174;2
WireConnection;190;0;189;0
WireConnection;190;1;188;0
WireConnection;30;0;29;0
WireConnection;30;1;40;0
WireConnection;152;0;151;0
WireConnection;191;0;189;0
WireConnection;191;1;190;0
WireConnection;161;0;155;0
WireConnection;161;1;173;0
WireConnection;120;0;30;0
WireConnection;120;1;119;0
WireConnection;120;2;117;0
WireConnection;154;0;152;0
WireConnection;154;1;157;0
WireConnection;192;1;191;0
WireConnection;150;0;120;0
WireConnection;150;1;161;0
WireConnection;153;0;150;0
WireConnection;153;1;154;0
WireConnection;196;0;192;0
WireConnection;196;1;197;0
WireConnection;193;0;196;0
WireConnection;193;1;153;0
WireConnection;165;0;167;0
WireConnection;165;1;168;0
WireConnection;202;0;33;0
WireConnection;202;1;201;0
WireConnection;32;0;202;0
WireConnection;32;2;193;0
WireConnection;32;11;165;0
ASEEND*/
//CHKSM=0DAFB3FA2CC955FEDD4FA56A7250F8D33709C55C