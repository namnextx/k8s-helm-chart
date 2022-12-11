#!/bin/bash


echo "namnextx" | helm registry login -u ${namnextx} --password-stdin ${CHART_REGISTRY}
echo "Done."