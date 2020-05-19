# djangorf-base

Base django rest framework for other DRF projects

## Prometheus 

### Some available metrics

- django_http_requests_body_total_bytes_bucket
- django_http_responses_body_total_bytes_bucket
- django_http_requests_latency_seconds_by_view_method_bucket
- django_http_requests_latency_including_middlewares_seconds_bucket

- prometheus_http_requests_total
- prometheus_http_request_duration_seconds_bucket
- prometheus_http_response_size_bytes_bucket

### PromQL queries examples

- sum(rate(django_http_requests_latency_seconds_by_view_method_bucket[30s])) BY (job, method)
- sum(rate(django_http_responses_body_total_bytes_bucket[30s])) by (job)