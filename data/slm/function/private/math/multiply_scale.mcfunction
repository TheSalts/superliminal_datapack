data modify storage slm:temp/scales x set from storage slm:target_scale scale
data modify storage slm:temp/scales y set from storage slm:original_scale scaleX
function gm:multiply with storage slm:temp/scales
data modify storage slm:target_localscale scaleX set from storage gm:io out

data modify storage slm:temp/scales x set from storage slm:target_scale scale
data modify storage slm:temp/scales y set from storage slm:original_scale scaleY
function gm:multiply with storage slm:temp/scales
data modify storage slm:target_localscale scaleY set from storage gm:io out

data modify storage slm:temp/scales x set from storage slm:target_scale scale
data modify storage slm:temp/scales y set from storage slm:original_scale scaleZ
function gm:multiply with storage slm:temp/scales
data modify storage slm:target_localscale scaleZ set from storage gm:io out
