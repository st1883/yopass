{{- define "resources_app" }}
resources:
  requests:
    cpu: {{ pluck .Values.global.env .Values.app.resources.requests.cpu | first | default .Values.app.resources.requests.cpu._default | quote }}
    memory: {{ pluck .Values.global.env .Values.app.resources.requests.memory | first | default .Values.app.resources.requests.memory._default | quote }}
  limits:
    cpu: {{ pluck .Values.global.env .Values.app.resources.limits.cpu | first | default .Values.app.resources.limits.cpu._default | quote }}
    memory: {{ pluck .Values.global.env .Values.app.resources.limits.memory | first | default .Values.app.resources.limits.memory._default | quote }}
{{- end }}

{{- define "resources_redis_sentinel" }}
resources:
  requests:
    cpu: {{ pluck .Values.global.env .Values.redis.sentinel.resources.requests.cpu | first | default .Values.redis.sentinel.resources.requests.cpu._default | quote }}
    memory: {{ pluck .Values.global.env .Values.redis.sentinel.resources.requests.memory | first | default .Values.redis.sentinel.resources.requests.memory._default | quote }}
  limits:
    cpu: {{ pluck .Values.global.env .Values.redis.sentinel.resources.limits.cpu | first | default .Values.redis.sentinel.resources.limits.cpu._default | quote }}
    memory: {{ pluck .Values.global.env .Values.redis.sentinel.resources.limits.memory | first | default .Values.redis.sentinel.resources.limits.memory._default | quote }}
{{- end }}

{{- define "resources_redis_failover" }}
resources:
  requests:
    cpu: {{ pluck .Values.global.env .Values.redis.failover.resources.requests.cpu | first | default .Values.redis.failover.resources.requests.cpu._default | quote }}
    memory: {{ pluck .Values.global.env .Values.redis.failover.resources.requests.memory | first | default .Values.redis.failover.resources.requests.memory._default | quote }}
  limits:
    cpu: {{ pluck .Values.global.env .Values.redis.failover.resources.limits.cpu | first | default .Values.redis.failover.resources.limits.cpu._default | quote }}
    memory: {{ pluck .Values.global.env .Values.redis.failover.resources.limits.memory | first | default .Values.redis.failover.resources.limits.memory._default | quote }}
{{- end }}