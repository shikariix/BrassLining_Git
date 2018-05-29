// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:32716,y:32678,varname:node_4795,prsc:2|emission-2393-OUT,alpha-798-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:31977,y:32410,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:3195b11e5a8df914bba28a10d1dc20d2,ntxv:0,isnm:False|UVIN-6477-UVOUT;n:type:ShaderForge.SFN_Multiply,id:2393,x:32495,y:32793,varname:node_2393,prsc:2|A-6074-RGB,B-2053-RGB,C-797-RGB,D-9248-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:32235,y:32772,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Color,id:797,x:32235,y:32930,ptovrint:True,ptlb:Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Vector1,id:9248,x:32235,y:33081,varname:node_9248,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:798,x:32495,y:32923,varname:node_798,prsc:2|A-6074-A,B-2053-A,C-797-A;n:type:ShaderForge.SFN_Rotator,id:6477,x:31617,y:32409,varname:node_6477,prsc:2|UVIN-2608-UVOUT,PIV-9421-OUT,ANG-3130-OUT;n:type:ShaderForge.SFN_TexCoord,id:2608,x:31461,y:32409,varname:node_2608,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Sin,id:1674,x:31100,y:32567,varname:node_1674,prsc:2|IN-5747-OUT;n:type:ShaderForge.SFN_Add,id:1496,x:31617,y:32567,varname:node_1496,prsc:2|A-3130-OUT,B-694-OUT;n:type:ShaderForge.SFN_Time,id:9787,x:30539,y:32566,varname:node_9787,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7852,x:30727,y:32566,varname:node_7852,prsc:2|A-1455-OUT,B-9787-T;n:type:ShaderForge.SFN_ValueProperty,id:1455,x:30539,y:32506,ptovrint:False,ptlb:Time Multiplier,ptin:_TimeMultiplier,varname:node_1455,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Vector1,id:6655,x:31282,y:32695,varname:node_6655,prsc:2,v1:-1;n:type:ShaderForge.SFN_Vector1,id:4373,x:31282,y:32753,varname:node_4373,prsc:2,v1:1;n:type:ShaderForge.SFN_Pi,id:694,x:31315,y:32965,varname:node_694,prsc:2;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:3130,x:31460,y:32567,varname:node_3130,prsc:2|IN-141-OUT,IMIN-6655-OUT,IMAX-4373-OUT,OMIN-6593-OUT,OMAX-5640-OUT;n:type:ShaderForge.SFN_Slider,id:5640,x:30943,y:32772,ptovrint:False,ptlb:Rotation Multiplier,ptin:_RotationMultiplier,varname:node_5640,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:1;n:type:ShaderForge.SFN_Negate,id:6593,x:31282,y:32815,varname:node_6593,prsc:2|IN-5640-OUT;n:type:ShaderForge.SFN_Power,id:141,x:31282,y:32567,varname:node_141,prsc:2|VAL-1674-OUT,EXP-4701-OUT;n:type:ShaderForge.SFN_Vector1,id:4701,x:31100,y:32695,varname:node_4701,prsc:2,v1:3;n:type:ShaderForge.SFN_Vector2,id:9421,x:31461,y:32312,varname:node_9421,prsc:2,v1:0.5,v2:0.1;n:type:ShaderForge.SFN_Negate,id:3433,x:31460,y:32695,varname:node_3433,prsc:2|IN-694-OUT;n:type:ShaderForge.SFN_Panner,id:9327,x:31788,y:32409,varname:node_9327,prsc:2,spu:0,spv:0.1|UVIN-6477-UVOUT,DIST-3130-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:930,x:30539,y:32336,varname:node_930,prsc:2;n:type:ShaderForge.SFN_Add,id:7490,x:30711,y:32336,varname:node_7490,prsc:2|A-930-X,B-930-Y,C-930-Z;n:type:ShaderForge.SFN_Add,id:5747,x:30918,y:32566,varname:node_5747,prsc:2|A-7490-OUT,B-7852-OUT;proporder:6074-797-1455-5640;pass:END;sub:END;*/

Shader "Shader Forge/SteamEmission" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _TintColor ("Color", Color) = (0.5,0.5,0.5,1)
        _TimeMultiplier ("Time Multiplier", Float ) = 5
        _RotationMultiplier ("Rotation Multiplier", Range(0, 1)) = 0.1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _TintColor;
            uniform float _TimeMultiplier;
            uniform float _RotationMultiplier;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_9787 = _Time;
                float node_6655 = (-1.0);
                float node_6593 = (-1*_RotationMultiplier);
                float node_3130 = (node_6593 + ( (pow(sin(((i.posWorld.r+i.posWorld.g+i.posWorld.b)+(_TimeMultiplier*node_9787.g))),3.0) - node_6655) * (_RotationMultiplier - node_6593) ) / (1.0 - node_6655));
                float node_6477_ang = node_3130;
                float node_6477_spd = 1.0;
                float node_6477_cos = cos(node_6477_spd*node_6477_ang);
                float node_6477_sin = sin(node_6477_spd*node_6477_ang);
                float2 node_6477_piv = float2(0.5,0.1);
                float2 node_6477 = (mul(i.uv0-node_6477_piv,float2x2( node_6477_cos, -node_6477_sin, node_6477_sin, node_6477_cos))+node_6477_piv);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_6477, _MainTex));
                float3 emissive = (_MainTex_var.rgb*i.vertexColor.rgb*_TintColor.rgb*2.0);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,(_MainTex_var.a*i.vertexColor.a*_TintColor.a));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
