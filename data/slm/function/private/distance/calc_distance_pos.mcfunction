data modify storage slm:temp/input x set from storage slm:pos playerPosX
data modify storage slm:temp/input y set from storage slm:pos targetPosX
function gm:subtract with storage slm:temp/input
data modify storage slm:calcpos x set from storage gm:io out
data modify storage slm:temp/input x set from storage slm:pos playerPosY
data modify storage slm:temp/input y set from storage slm:pos targetPosY
function gm:subtract with storage slm:temp/input
data modify storage slm:calcpos y set from storage gm:io out
data modify storage slm:temp/input x set from storage slm:pos playerPosZ
data modify storage slm:temp/input y set from storage slm:pos targetPosZ
function gm:subtract with storage slm:temp/input
data modify storage slm:calcpos z set from storage gm:io out
function slm:private/distance/get_distance_from_zero
