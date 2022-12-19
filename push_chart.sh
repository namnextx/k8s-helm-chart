#!/bin/bash
echo "Begin"

helm package charts/java-application-chart

FILES="*.tgz"
export isChartChange=0


echo "$GITHUB_TOKEN" | helm registry login -u namnextx --password-stdin ghcr.io

for f in $FILES
do
    echo "$f Processing"
    helm push $f oci://ghcr.io/namnextx
    export isChartChange=1
done

echo $isChartChange

if [ $isChartChange = 1 ];
then
    echo "Updating the index.yaml..."
    git remote set-url origin "https://${GITHUB_TOKEN}:${GITHUB_TOKEN}@github.com/${OWNER_REPO}/${REPO_NAME}"
    git reset --hard
    git checkout chart-releases
    git pull
    helm repo index ${CHART_PACKAGE_PATH} --merge index.yaml --url oci://${CHART_REGISTRY}/${OWNER_REPO}
    mv -f "${CHART_PACKAGE_PATH}/index.yaml" "index.yaml"
    git add index.yaml
    git commit -m "Update index..."
    git push
else
    echo "There is no chart to be updated."
fi
echo "Done."