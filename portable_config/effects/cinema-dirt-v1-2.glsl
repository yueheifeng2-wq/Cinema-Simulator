//!HOOK MAIN
//!BIND HOOKED
//!DESC Cinema film dirt
float dust(vec2 p,vec2 c,vec2 r){vec2 d=(p-c)/r;return exp(-dot(d,d)*2.0);}
vec4 hook(){vec2 p=HOOKED_pos;vec4 c=HOOKED_tex(p);float dirt=0.0;
dirt+=0.55*dust(p,vec2(0.16,0.21),vec2(0.055,0.09));
dirt+=0.62*dust(p,vec2(0.82,0.71),vec2(0.065,0.11));
dirt+=0.48*dust(p,vec2(0.52,0.12),vec2(0.025,0.13));
dirt+=0.48*dust(p,vec2(0.34,0.83),vec2(0.06,0.045));
dirt+=0.35*dust(p,vec2(0.69,0.43),vec2(0.025,0.04));
float scratch=0.26*(1.0-smoothstep(0.0006,0.0017,abs(p.x-0.27-0.0015*sin(p.y*23.0))))*smoothstep(0.05,0.12,p.y)*(1.0-smoothstep(0.72,0.82,p.y));
scratch+=0.18*(1.0-smoothstep(0.0004,0.0012,abs(p.x-0.74)))*smoothstep(0.3,0.4,p.y);
vec2 cell=floor(p*vec2(70.0,40.0));float seed=fract(sin(dot(cell,vec2(12.9898,78.233)))*43758.5453);
float speck=step(0.983,seed)*(1.0-smoothstep(0.04,0.16,length(fract(p*vec2(70.0,40.0))-vec2(0.5))));
float amount=clamp((dirt+scratch+0.44*speck)*0.15,0.0,0.75);c.rgb=mix(c.rgb,vec3(0.07,0.055,0.035),amount);return c;}
