{{- define "probes_app" }}
livenessProbe:
  httpGet:
    port: {{ pluck .Values.global.env .Values.app.port | first | default .Values.app.port._default }}
    path: /
  initialDelaySeconds: 30
  periodSeconds: 10
  timeoutSeconds: 5
readinessProbe:
  httpGet:
    port: {{ pluck .Values.global.env .Values.app.port | first | default .Values.app.port._default }}
    path: /
  initialDelaySeconds: 5
  periodSeconds: 10
  timeoutSeconds: 5
{{- end }}