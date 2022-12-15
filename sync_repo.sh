#!/bin/sh
mkdir -p package
cd package
helm package ../charts/*
echo "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" | helm registry login -u namnextx --password-stdin ghcr.io
helm repo index . --url https://ghcr.io/namnextx

