// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:False,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:0,qpre:4,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32690,y:32718,varname:node_2865,prsc:2|diff-2042-OUT,spec-1797-A,emission-4710-OUT;n:type:ShaderForge.SFN_Color,id:1797,x:32142,y:32833,ptovrint:False,ptlb:Beam_Colour,ptin:_Beam_Colour,varname:node_1797,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5147059,c2:0.8995942,c3:1,c4:0.5;n:type:ShaderForge.SFN_Tex2d,id:153,x:32142,y:32647,ptovrint:False,ptlb:Beam_Texture,ptin:_Beam_Texture,varname:node_153,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a5104d0103b141f4ca7f6318375964db,ntxv:2,isnm:False|UVIN-4822-UVOUT;n:type:ShaderForge.SFN_Panner,id:4822,x:31982,y:32647,varname:node_4822,prsc:2,spu:-1,spv:0|UVIN-7694-OUT,DIST-4202-OUT;n:type:ShaderForge.SFN_TexCoord,id:7911,x:31584,y:32446,varname:node_7911,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:2081,x:32331,y:32833,varname:node_2081,prsc:2|A-153-RGB,B-1797-RGB;n:type:ShaderForge.SFN_Time,id:497,x:31584,y:32865,varname:node_497,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:2539,x:31584,y:32790,ptovrint:False,ptlb:Pan_Speed,ptin:_Pan_Speed,varname:node_2539,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:4202,x:31769,y:32790,varname:node_4202,prsc:2|A-2539-OUT,B-497-T;n:type:ShaderForge.SFN_Add,id:2042,x:32331,y:32647,varname:node_2042,prsc:2|A-153-RGB,B-1797-RGB;n:type:ShaderForge.SFN_Multiply,id:7694,x:31769,y:32596,varname:node_7694,prsc:2|A-7911-UVOUT,B-9907-XYZ;n:type:ShaderForge.SFN_Vector4Property,id:9907,x:31584,y:32622,ptovrint:False,ptlb:Tiling,ptin:_Tiling,varname:node_9907,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5,v2:1,v3:0,v4:0;n:type:ShaderForge.SFN_ValueProperty,id:5569,x:31584,y:33024,ptovrint:False,ptlb:Pulse_Speed,ptin:_Pulse_Speed,varname:node_5569,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:3445,x:31769,y:32957,varname:node_3445,prsc:2|A-497-T,B-5569-OUT;n:type:ShaderForge.SFN_Sin,id:4155,x:31938,y:32957,varname:node_4155,prsc:2|IN-3445-OUT;n:type:ShaderForge.SFN_Multiply,id:4710,x:32505,y:32930,varname:node_4710,prsc:2|A-2081-OUT,B-3405-OUT;n:type:ShaderForge.SFN_Multiply,id:5993,x:32142,y:32981,varname:node_5993,prsc:2|A-4155-OUT,B-5665-OUT;n:type:ShaderForge.SFN_Vector1,id:5665,x:31938,y:33099,varname:node_5665,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Add,id:3405,x:32331,y:32981,varname:node_3405,prsc:2|A-5993-OUT,B-4705-OUT;n:type:ShaderForge.SFN_Vector1,id:4705,x:32142,y:33116,varname:node_4705,prsc:2,v1:1;proporder:153-1797-2539-9907-5569;pass:END;sub:END;*/

Shader "Shader Forge/LightBeam" {
    Properties {
        _Beam_Texture ("Beam_Texture", 2D) = "black" {}
        _Beam_Colour ("Beam_Colour", Color) = (0.5147059,0.8995942,1,0.5)
        _Pan_Speed ("Pan_Speed", Float ) = 1
        _Tiling ("Tiling", Vector) = (5,1,0,0)
        _Pulse_Speed ("Pulse_Speed", Float ) = 1
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Overlay"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Beam_Colour;
            uniform sampler2D _Beam_Texture; uniform float4 _Beam_Texture_ST;
            uniform float _Pan_Speed;
            uniform float4 _Tiling;
            uniform float _Pulse_Speed;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_497 = _Time;
                float2 node_4822 = ((float3(i.uv0,0.0)*_Tiling.rgb)+(_Pan_Speed*node_497.g)*float2(-1,0));
                float4 _Beam_Texture_var = tex2D(_Beam_Texture,TRANSFORM_TEX(node_4822, _Beam_Texture));
                float3 emissive = ((_Beam_Texture_var.rgb*_Beam_Colour.rgb)*((sin((node_497.g*_Pulse_Speed))*0.5)+1.0));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
