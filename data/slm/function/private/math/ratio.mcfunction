data modify storage slm:calc_ratio list set value [0f,0f,0f,0f, 0f,0f,0f,0f, 0f,0f,0f,0f, 0f,0f,0f,0f]
data modify storage slm:calc_ratio list[0] set from storage slm:ratio_input b
data modify storage slm:calc_ratio list[15] set from storage slm:ratio_input a

function slm:_internal/private/private/math/ratio_5
