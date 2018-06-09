// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32719,y:32712,varname:node_2865,prsc:2|diff-2449-OUT,spec-742-OUT,gloss-4952-OUT,normal-8830-OUT,emission-698-RGB,alpha-173-OUT;n:type:ShaderForge.SFN_Slider,id:358,x:32236,y:32086,ptovrint:False,ptlb:MetallicMultiplier,ptin:_MetallicMultiplier,varname:node_358,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:1813,x:32229,y:32352,ptovrint:False,ptlb:SmoothnessMultiplier,ptin:_SmoothnessMultiplier,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_FragmentPosition,id:4491,x:31273,y:32705,varname:node_4491,prsc:2;n:type:ShaderForge.SFN_Append,id:4645,x:31457,y:32562,varname:node_4645,prsc:2|A-4491-Y,B-4491-Z;n:type:ShaderForge.SFN_Append,id:5058,x:31457,y:32705,varname:node_5058,prsc:2|A-4491-X,B-4491-Z;n:type:ShaderForge.SFN_Append,id:4018,x:31457,y:32853,varname:node_4018,prsc:2|A-4491-X,B-4491-Y;n:type:ShaderForge.SFN_NormalVector,id:1678,x:31695,y:32705,prsc:2,pt:False;n:type:ShaderForge.SFN_Abs,id:1931,x:31868,y:32705,varname:node_1931,prsc:2|IN-1678-OUT;n:type:ShaderForge.SFN_Multiply,id:763,x:32043,y:32705,varname:node_763,prsc:2|A-1931-OUT,B-1931-OUT;n:type:ShaderForge.SFN_ChannelBlend,id:8391,x:32210,y:32441,varname:node_8391,prsc:2,chbt:0|M-763-OUT,R-2567-OUT,G-90-OUT,B-8721-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:3547,x:31271,y:32338,ptovrint:False,ptlb:Albedo Texture,ptin:_AlbedoTexture,varname:node_3547,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1858,x:31695,y:32267,varname:node_1858,prsc:2,ntxv:0,isnm:False|UVIN-4645-OUT,TEX-3547-TEX;n:type:ShaderForge.SFN_Tex2d,id:656,x:31695,y:32411,varname:node_656,prsc:2,ntxv:0,isnm:False|UVIN-5058-OUT,TEX-3547-TEX;n:type:ShaderForge.SFN_Tex2d,id:4702,x:31695,y:32552,varname:node_4702,prsc:2,ntxv:0,isnm:False|UVIN-4018-OUT,TEX-3547-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:7423,x:31264,y:33027,ptovrint:False,ptlb:Normal Texture,ptin:_NormalTexture,varname:node_7423,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:5851,x:31695,y:32892,varname:node_5851,prsc:2,ntxv:0,isnm:False|UVIN-4645-OUT,TEX-7423-TEX;n:type:ShaderForge.SFN_Tex2d,id:5,x:31695,y:33029,varname:node_5,prsc:2,ntxv:0,isnm:False|UVIN-5058-OUT,TEX-7423-TEX;n:type:ShaderForge.SFN_Tex2d,id:9128,x:31695,y:33174,varname:node_9128,prsc:2,ntxv:0,isnm:False|UVIN-4018-OUT,TEX-7423-TEX;n:type:ShaderForge.SFN_ChannelBlend,id:8830,x:32250,y:33040,varname:node_8830,prsc:2,chbt:0|M-763-OUT,R-5851-RGB,G-5-RGB,B-9128-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:3353,x:31268,y:31931,ptovrint:False,ptlb:MetallicSmoothness,ptin:_MetallicSmoothness,varname:node_3353,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:1,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:2199,x:31695,y:31811,varname:node_2199,prsc:2,ntxv:0,isnm:False|UVIN-4645-OUT,TEX-3353-TEX;n:type:ShaderForge.SFN_Tex2d,id:5413,x:31695,y:31957,varname:node_5413,prsc:2,ntxv:0,isnm:False|UVIN-5058-OUT,TEX-3353-TEX;n:type:ShaderForge.SFN_Tex2d,id:2682,x:31695,y:32107,varname:node_2682,prsc:2,ntxv:0,isnm:False|UVIN-4018-OUT,TEX-3353-TEX;n:type:ShaderForge.SFN_ChannelBlend,id:408,x:32211,y:32175,varname:node_408,prsc:2,chbt:0|M-763-OUT,R-1293-OUT,G-1224-OUT,B-6065-OUT;n:type:ShaderForge.SFN_Append,id:1293,x:31882,y:31811,varname:node_1293,prsc:2|A-2199-R,B-2199-A;n:type:ShaderForge.SFN_Append,id:1224,x:31882,y:31957,varname:node_1224,prsc:2|A-5413-R,B-5413-A;n:type:ShaderForge.SFN_Append,id:6065,x:31882,y:32107,varname:node_6065,prsc:2|A-2682-R,B-2682-A;n:type:ShaderForge.SFN_ComponentMask,id:8129,x:32393,y:32175,varname:node_8129,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-408-OUT;n:type:ShaderForge.SFN_Append,id:2567,x:31882,y:32267,varname:node_2567,prsc:2|A-1858-RGB,B-1858-A;n:type:ShaderForge.SFN_Append,id:90,x:31882,y:32411,varname:node_90,prsc:2|A-656-RGB,B-656-A;n:type:ShaderForge.SFN_Append,id:8721,x:31882,y:32552,varname:node_8721,prsc:2|A-4702-RGB,B-4702-A;n:type:ShaderForge.SFN_ComponentMask,id:60,x:32386,y:32441,varname:node_60,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-8391-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9329,x:32379,y:32864,varname:node_9329,prsc:2,cc1:3,cc2:-1,cc3:-1,cc4:-1|IN-8391-OUT;n:type:ShaderForge.SFN_Vector1,id:8021,x:32393,y:32000,varname:node_8021,prsc:2,v1:0;n:type:ShaderForge.SFN_Lerp,id:742,x:32607,y:32039,varname:node_742,prsc:2|A-8021-OUT,B-8129-R,T-358-OUT;n:type:ShaderForge.SFN_Lerp,id:4952,x:32607,y:32265,varname:node_4952,prsc:2|A-8021-OUT,B-8129-G,T-1813-OUT;n:type:ShaderForge.SFN_Color,id:3172,x:32210,y:32613,ptovrint:False,ptlb:ColourMultiplier,ptin:_ColourMultiplier,varname:node_3172,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Slider,id:9288,x:32053,y:32901,ptovrint:False,ptlb:TransparencyMultiplier,ptin:_TransparencyMultiplier,varname:node_9288,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Vector1,id:4704,x:32210,y:32821,varname:node_4704,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:173,x:32558,y:32991,varname:node_173,prsc:2|A-9329-OUT,B-4704-OUT,T-9288-OUT;n:type:ShaderForge.SFN_Multiply,id:2650,x:32414,y:32613,varname:node_2650,prsc:2|A-60-OUT,B-3172-RGB;n:type:ShaderForge.SFN_Color,id:698,x:32408,y:33182,ptovrint:False,ptlb:Emission,ptin:_Emission,varname:node_698,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.3455882,c2:0.3455882,c3:0.3455882,c4:1;n:type:ShaderForge.SFN_Add,id:2449,x:32582,y:32646,varname:node_2449,prsc:2|A-2650-OUT,B-6180-RGB;n:type:ShaderForge.SFN_Color,id:6180,x:32414,y:32756,ptovrint:False,ptlb:ColourAddition,ptin:_ColourAddition,varname:node_6180,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;proporder:3547-3172-6180-9288-7423-3353-358-1813-698;pass:END;sub:END;*/

Shader "Shader Forge/Transparent_Triplanar" {
    Properties {
        _AlbedoTexture ("Albedo Texture", 2D) = "white" {}
        _ColourMultiplier ("ColourMultiplier", Color) = (1,1,1,1)
        _ColourAddition ("ColourAddition", Color) = (0,0,0,1)
        _TransparencyMultiplier ("TransparencyMultiplier", Range(0, 1)) = 0
        _NormalTexture ("Normal Texture", 2D) = "bump" {}
        _MetallicSmoothness ("MetallicSmoothness", 2D) = "gray" {}
        _MetallicMultiplier ("MetallicMultiplier", Range(0, 1)) = 1
        _SmoothnessMultiplier ("SmoothnessMultiplier", Range(0, 1)) = 1
        _Emission ("Emission", Color) = (0.3455882,0.3455882,0.3455882,1)
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
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _MetallicMultiplier;
            uniform float _SmoothnessMultiplier;
            uniform sampler2D _AlbedoTexture; uniform float4 _AlbedoTexture_ST;
            uniform sampler2D _NormalTexture; uniform float4 _NormalTexture_ST;
            uniform sampler2D _MetallicSmoothness; uniform float4 _MetallicSmoothness_ST;
            uniform float4 _ColourMultiplier;
            uniform float _TransparencyMultiplier;
            uniform float4 _Emission;
            uniform float4 _ColourAddition;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv1 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float3 tangentDir : TEXCOORD4;
                float3 bitangentDir : TEXCOORD5;
                UNITY_FOG_COORDS(6)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD7;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 node_1931 = abs(i.normalDir);
                float3 node_763 = (node_1931*node_1931);
                float2 node_4645 = float2(i.posWorld.g,i.posWorld.b);
                float3 node_5851 = UnpackNormal(tex2D(_NormalTexture,TRANSFORM_TEX(node_4645, _NormalTexture)));
                float2 node_5058 = float2(i.posWorld.r,i.posWorld.b);
                float3 node_5 = UnpackNormal(tex2D(_NormalTexture,TRANSFORM_TEX(node_5058, _NormalTexture)));
                float2 node_4018 = float2(i.posWorld.r,i.posWorld.g);
                float3 node_9128 = UnpackNormal(tex2D(_NormalTexture,TRANSFORM_TEX(node_4018, _NormalTexture)));
                float3 normalLocal = (node_763.r*node_5851.rgb + node_763.g*node_5.rgb + node_763.b*node_9128.rgb);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float node_8021 = 0.0;
                float4 node_2199 = tex2D(_MetallicSmoothness,TRANSFORM_TEX(node_4645, _MetallicSmoothness));
                float4 node_5413 = tex2D(_MetallicSmoothness,TRANSFORM_TEX(node_5058, _MetallicSmoothness));
                float4 node_2682 = tex2D(_MetallicSmoothness,TRANSFORM_TEX(node_4018, _MetallicSmoothness));
                float2 node_8129 = (node_763.r*float2(node_2199.r,node_2199.a) + node_763.g*float2(node_5413.r,node_5413.a) + node_763.b*float2(node_2682.r,node_2682.a)).rg;
                float gloss = lerp(node_8021,node_8129.g,_SmoothnessMultiplier);
                float perceptualRoughness = 1.0 - lerp(node_8021,node_8129.g,_SmoothnessMultiplier);
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = lerp(node_8021,node_8129.r,_MetallicMultiplier);
                float specularMonochrome;
                float4 node_1858 = tex2D(_AlbedoTexture,TRANSFORM_TEX(node_4645, _AlbedoTexture));
                float4 node_656 = tex2D(_AlbedoTexture,TRANSFORM_TEX(node_5058, _AlbedoTexture));
                float4 node_4702 = tex2D(_AlbedoTexture,TRANSFORM_TEX(node_4018, _AlbedoTexture));
                float4 node_8391 = (node_763.r*float4(node_1858.rgb,node_1858.a) + node_763.g*float4(node_656.rgb,node_656.a) + node_763.b*float4(node_4702.rgb,node_4702.a));
                float3 diffuseColor = ((node_8391.rgb*_ColourMultiplier.rgb)+_ColourAddition.rgb); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                half surfaceReduction;
                #ifdef UNITY_COLORSPACE_GAMMA
                    surfaceReduction = 1.0-0.28*roughness*perceptualRoughness;
                #else
                    surfaceReduction = 1.0/(roughness*roughness + 1.0);
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                indirectSpecular *= surfaceReduction;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = _Emission.rgb;
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
                fixed4 finalRGBA = fixed4(finalColor,lerp(node_8391.a,1.0,_TransparencyMultiplier));
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _MetallicMultiplier;
            uniform float _SmoothnessMultiplier;
            uniform sampler2D _AlbedoTexture; uniform float4 _AlbedoTexture_ST;
            uniform sampler2D _NormalTexture; uniform float4 _NormalTexture_ST;
            uniform sampler2D _MetallicSmoothness; uniform float4 _MetallicSmoothness_ST;
            uniform float4 _ColourMultiplier;
            uniform float _TransparencyMultiplier;
            uniform float4 _Emission;
            uniform float4 _ColourAddition;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv1 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float3 tangentDir : TEXCOORD4;
                float3 bitangentDir : TEXCOORD5;
                LIGHTING_COORDS(6,7)
                UNITY_FOG_COORDS(8)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 node_1931 = abs(i.normalDir);
                float3 node_763 = (node_1931*node_1931);
                float2 node_4645 = float2(i.posWorld.g,i.posWorld.b);
                float3 node_5851 = UnpackNormal(tex2D(_NormalTexture,TRANSFORM_TEX(node_4645, _NormalTexture)));
                float2 node_5058 = float2(i.posWorld.r,i.posWorld.b);
                float3 node_5 = UnpackNormal(tex2D(_NormalTexture,TRANSFORM_TEX(node_5058, _NormalTexture)));
                float2 node_4018 = float2(i.posWorld.r,i.posWorld.g);
                float3 node_9128 = UnpackNormal(tex2D(_NormalTexture,TRANSFORM_TEX(node_4018, _NormalTexture)));
                float3 normalLocal = (node_763.r*node_5851.rgb + node_763.g*node_5.rgb + node_763.b*node_9128.rgb);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float node_8021 = 0.0;
                float4 node_2199 = tex2D(_MetallicSmoothness,TRANSFORM_TEX(node_4645, _MetallicSmoothness));
                float4 node_5413 = tex2D(_MetallicSmoothness,TRANSFORM_TEX(node_5058, _MetallicSmoothness));
                float4 node_2682 = tex2D(_MetallicSmoothness,TRANSFORM_TEX(node_4018, _MetallicSmoothness));
                float2 node_8129 = (node_763.r*float2(node_2199.r,node_2199.a) + node_763.g*float2(node_5413.r,node_5413.a) + node_763.b*float2(node_2682.r,node_2682.a)).rg;
                float gloss = lerp(node_8021,node_8129.g,_SmoothnessMultiplier);
                float perceptualRoughness = 1.0 - lerp(node_8021,node_8129.g,_SmoothnessMultiplier);
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = lerp(node_8021,node_8129.r,_MetallicMultiplier);
                float specularMonochrome;
                float4 node_1858 = tex2D(_AlbedoTexture,TRANSFORM_TEX(node_4645, _AlbedoTexture));
                float4 node_656 = tex2D(_AlbedoTexture,TRANSFORM_TEX(node_5058, _AlbedoTexture));
                float4 node_4702 = tex2D(_AlbedoTexture,TRANSFORM_TEX(node_4018, _AlbedoTexture));
                float4 node_8391 = (node_763.r*float4(node_1858.rgb,node_1858.a) + node_763.g*float4(node_656.rgb,node_656.a) + node_763.b*float4(node_4702.rgb,node_4702.a));
                float3 diffuseColor = ((node_8391.rgb*_ColourMultiplier.rgb)+_ColourAddition.rgb); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * lerp(node_8391.a,1.0,_TransparencyMultiplier),0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _MetallicMultiplier;
            uniform float _SmoothnessMultiplier;
            uniform sampler2D _AlbedoTexture; uniform float4 _AlbedoTexture_ST;
            uniform sampler2D _MetallicSmoothness; uniform float4 _MetallicSmoothness_ST;
            uniform float4 _ColourMultiplier;
            uniform float4 _Emission;
            uniform float4 _ColourAddition;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv1 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = _Emission.rgb;
                
                float3 node_1931 = abs(i.normalDir);
                float3 node_763 = (node_1931*node_1931);
                float2 node_4645 = float2(i.posWorld.g,i.posWorld.b);
                float4 node_1858 = tex2D(_AlbedoTexture,TRANSFORM_TEX(node_4645, _AlbedoTexture));
                float2 node_5058 = float2(i.posWorld.r,i.posWorld.b);
                float4 node_656 = tex2D(_AlbedoTexture,TRANSFORM_TEX(node_5058, _AlbedoTexture));
                float2 node_4018 = float2(i.posWorld.r,i.posWorld.g);
                float4 node_4702 = tex2D(_AlbedoTexture,TRANSFORM_TEX(node_4018, _AlbedoTexture));
                float4 node_8391 = (node_763.r*float4(node_1858.rgb,node_1858.a) + node_763.g*float4(node_656.rgb,node_656.a) + node_763.b*float4(node_4702.rgb,node_4702.a));
                float3 diffColor = ((node_8391.rgb*_ColourMultiplier.rgb)+_ColourAddition.rgb);
                float specularMonochrome;
                float3 specColor;
                float node_8021 = 0.0;
                float4 node_2199 = tex2D(_MetallicSmoothness,TRANSFORM_TEX(node_4645, _MetallicSmoothness));
                float4 node_5413 = tex2D(_MetallicSmoothness,TRANSFORM_TEX(node_5058, _MetallicSmoothness));
                float4 node_2682 = tex2D(_MetallicSmoothness,TRANSFORM_TEX(node_4018, _MetallicSmoothness));
                float2 node_8129 = (node_763.r*float2(node_2199.r,node_2199.a) + node_763.g*float2(node_5413.r,node_5413.a) + node_763.b*float2(node_2682.r,node_2682.a)).rg;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, lerp(node_8021,node_8129.r,_MetallicMultiplier), specColor, specularMonochrome );
                float roughness = 1.0 - lerp(node_8021,node_8129.g,_SmoothnessMultiplier);
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
