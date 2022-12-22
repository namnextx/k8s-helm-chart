{{/* Generate name of the chart */}}
{{- define "chart.name"}}
{{- default .Chart.Name }}
{{- end}}


{{/* Generate namespace */}}
{{- define "common.namespaces" -}}
k8s-helm-learning
{{- end }}

{{/* Common labels */}}
{{- define "common.labels" -}}
{{ include "common.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "common.selectorLabels" -}}
app.kubernetes.io/name: {{ include "chart.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
