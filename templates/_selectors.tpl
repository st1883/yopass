{{- define "tolerations_production" }}
{{- if eq .Values.global.env "production" }}
tolerations:
- effect: NoExecute
  key: dedicated
  operator: Equal
  value: production
{{- end }}
{{- end }}

{{- define "nodeselector_production" }}
{{- if eq .Values.global.env "production" }}
nodeSelector:
  dedicated: production
{{- end }}
{{- end }}

{{- define "affinity_app" }}
{{- if eq .Values.global.env "production" }}
affinity:
  podAntiAffinity:
    preferredDuringSchedulingIgnoredDuringExecution:
    - weight: 100
      podAffinityTerm:
        topologyKey: kubernetes.io/hostname
        labelSelector:
          matchExpressions:
          - key: app
            operator: In
            values:
            - {{ .Chart.Name | quote }}
{{- end }}
{{- end }}