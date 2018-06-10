// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:32567,y:32676,varname:node_4013,prsc:2|diff-8587-OUT,emission-5669-OUT;n:type:ShaderForge.SFN_Tex2d,id:4045,x:32179,y:32650,ptovrint:False,ptlb:LandscapeTexture,ptin:_LandscapeTexture,varname:node_4045,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-4465-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:4063,x:31670,y:32650,varname:node_4063,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Rotator,id:7886,x:31841,y:32650,varname:node_7886,prsc:2|UVIN-4063-UVOUT,PIV-9116-OUT,ANG-1310-OUT;n:type:ShaderForge.SFN_Panner,id:4465,x:32009,y:32650,varname:node_4465,prsc:2,spu:0,spv:-1|UVIN-7886-UVOUT,DIST-5544-OUT;n:type:ShaderForge.SFN_Time,id:8987,x:31154,y:32930,varname:node_8987,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:789,x:31592,y:33068,ptovrint:False,ptlb:FlyingSpeed,ptin:_FlyingSpeed,varname:node_789,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:7738,x:31361,y:32763,ptovrint:False,ptlb:RotationSpeed,ptin:_RotationSpeed,varname:node_7738,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:5544,x:31796,y:33034,varname:node_5544,prsc:2|A-8987-TSL,B-789-OUT;n:type:ShaderForge.SFN_Multiply,id:1310,x:31544,y:32809,varname:node_1310,prsc:2|A-7738-OUT,B-4909-OUT;n:type:ShaderForge.SFN_Color,id:3807,x:32179,y:33039,ptovrint:False,ptlb:Emission,ptin:_Emission,varname:node_3807,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Add,id:5669,x:32391,y:32821,varname:node_5669,prsc:2|A-4045-RGB,B-9903-RGB,C-9903-RGB,D-3807-RGB;n:type:ShaderForge.SFN_Vector1,id:8587,x:32405,y:32676,varname:node_8587,prsc:2,v1:0;n:type:ShaderForge.SFN_Sin,id:4909,x:31361,y:32832,varname:node_4909,prsc:2|IN-8987-TSL;n:type:ShaderForge.SFN_Vector2,id:9116,x:31670,y:32533,varname:node_9116,prsc:2,v1:0.5,v2:0.1;n:type:ShaderForge.SFN_Tex2d,id:9903,x:32179,y:32838,ptovrint:False,ptlb:CloudTexture,ptin:_CloudTexture,varname:node_9903,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-4015-UVOUT;n:type:ShaderForge.SFN_ValueProperty,id:5126,x:31772,y:33209,ptovrint:False,ptlb:CloudSpeed,ptin:_CloudSpeed,varname:node_5126,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Panner,id:4015,x:32009,y:32838,varname:node_4015,prsc:2,spu:0,spv:-1|UVIN-9697-UVOUT,DIST-3357-OUT;n:type:ShaderForge.SFN_Rotator,id:9697,x:31841,y:32838,varname:node_9697,prsc:2|UVIN-4063-UVOUT,PIV-9116-OUT,ANG-7169-OUT;n:type:ShaderForge.SFN_Multiply,id:3357,x:31960,y:33039,varname:node_3357,prsc:2|A-5544-OUT,B-5126-OUT;n:type:ShaderForge.SFN_Add,id:7169,x:31692,y:32838,varname:node_7169,prsc:2|A-1310-OUT,B-3315-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3315,x:31400,y:33068,ptovrint:False,ptlb:CloudDirection,ptin:_CloudDirection,varname:node_3315,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;proporder:3807-4045-9903-789-7738-5126-3315;pass:END;sub:END;*/

Shader "Shader Forge/ScrollingLandscape" {
    Properties {
        _Emission ("Emission", Color) = (0.5,0.5,0.5,1)
        _LandscapeTexture ("LandscapeTexture", 2D) = "white" {}
        _CloudTexture ("CloudTexture", 2D) = "white" {}
        _FlyingSpeed ("FlyingSpeed", Float ) = 0
        _RotationSpeed ("RotationSpeed", Float ) = 0
        _CloudSpeed ("CloudSpeed", Float ) = 0
        _CloudDirection ("CloudDirection", Float ) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _LandscapeTexture; uniform float4 _LandscapeTexture_ST;
            uniform float _FlyingSpeed;
            uniform float _RotationSpeed;
            uniform float4 _Emission;
            uniform sampler2D _CloudTexture; uniform float4 _CloudTexture_ST;
            uniform float _CloudSpeed;
            uniform float _CloudDirection;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float node_8587 = 0.0;
                float3 diffuseColor = float3(node_8587,node_8587,node_8587);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float4 node_8987 = _Time;
                float node_5544 = (node_8987.r*_FlyingSpeed);
                float node_1310 = (_RotationSpeed*sin(node_8987.r));
                float2 node_9116 = float2(0.5,0.1);
                float node_7886_ang = node_1310;
                float node_7886_spd = 1.0;
                float node_7886_cos = cos(node_7886_spd*node_7886_ang);
                float node_7886_sin = sin(node_7886_spd*node_7886_ang);
                float2 node_7886_piv = node_9116;
                float2 node_7886 = (mul(i.uv0-node_7886_piv,float2x2( node_7886_cos, -node_7886_sin, node_7886_sin, node_7886_cos))+node_7886_piv);
                float2 node_4465 = (node_7886+node_5544*float2(0,-1));
                float4 _LandscapeTexture_var = tex2D(_LandscapeTexture,TRANSFORM_TEX(node_4465, _LandscapeTexture));
                float node_9697_ang = (node_1310+_CloudDirection);
                float node_9697_spd = 1.0;
                float node_9697_cos = cos(node_9697_spd*node_9697_ang);
                float node_9697_sin = sin(node_9697_spd*node_9697_ang);
                float2 node_9697_piv = node_9116;
                float2 node_9697 = (mul(i.uv0-node_9697_piv,float2x2( node_9697_cos, -node_9697_sin, node_9697_sin, node_9697_cos))+node_9697_piv);
                float2 node_4015 = (node_9697+(node_5544*_CloudSpeed)*float2(0,-1));
                float4 _CloudTexture_var = tex2D(_CloudTexture,TRANSFORM_TEX(node_4015, _CloudTexture));
                float3 emissive = (_LandscapeTexture_var.rgb+_CloudTexture_var.rgb+_CloudTexture_var.rgb+_Emission.rgb);
/// Final Color:
                float3 finalColor = diffuse + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _LandscapeTexture; uniform float4 _LandscapeTexture_ST;
            uniform float _FlyingSpeed;
            uniform float _RotationSpeed;
            uniform float4 _Emission;
            uniform sampler2D _CloudTexture; uniform float4 _CloudTexture_ST;
            uniform float _CloudSpeed;
            uniform float _CloudDirection;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float node_8587 = 0.0;
                float3 diffuseColor = float3(node_8587,node_8587,node_8587);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
