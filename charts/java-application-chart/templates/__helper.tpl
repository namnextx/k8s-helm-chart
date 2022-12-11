{{/* Generate label */}}
{{- define "common.labels" }}
app: node-app-with-helm
{{- end -}}

{{/* Generate namespace */}}
{{- define "common.namespaces" -}}
node-app-with-helm
{{- end }}
