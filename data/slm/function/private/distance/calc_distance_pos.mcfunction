$function gm:subtract {x:$(playerPosX), y:$(targetPosX)}
data modify storage slm:calcpos x set from storage gm:io out
$function gm:subtract {x:$(playerPosY), y:$(targetPosY)}
data modify storage slm:calcpos y set from storage gm:io out
$function gm:subtract {x:$(playerPosZ), y:$(targetPosZ)}
data modify storage slm:calcpos z set from storage gm:io out
function slm:private/distance/get_distance_from_zero with storage slm:calcpos
