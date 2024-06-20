$function hmmp:subtract {a:$(playerPosX), b:$(targetPosX)}
data modify storage slm:calcpos x set from storage hmp:math output
$function hmmp:subtract {a:$(playerPosY), b:$(targetPosY)}
data modify storage slm:calcpos y set from storage hmp:math output
$function hmmp:subtract {a:$(playerPosZ), b:$(targetPosZ)}
data modify storage slm:calcpos z set from storage hmp:math output
function slm:private/distance/get_distance_from_zero with storage slm:calcpos