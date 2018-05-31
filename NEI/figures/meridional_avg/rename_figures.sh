#!/bin/bash

vars=(vnt_air_2m_daily_max vnt_air_2m_daily_min vntotal_prec)
seasons=(DJF MAM JJA SON)
prefix=meridional_mean_extremes

# remove annual
rm *_annual.png

for v in ${vars[@]}; do
    for s in ${seasons[@]}; do
        mv  *${v}*${s}.png  ${s}_${v#vn*}.png
    done
done
