{{- define "location-apps.labels" -}}
app.kubernetes.io/managed-by: Helm
app.kubernetes.io/part-of: location-apps
canary-poc/env: {{ .Values.env }}
{{- end }}
