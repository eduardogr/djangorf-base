<h1 align="center"> djangorf-base </h1> <br>

[![Python](https://img.shields.io/badge/Python-v3.6%2B-blue)]()
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/eduardogr/evalytics/blob/master/.github/CONTRIBUTING.md)
[![GitHub license](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://github.com/eduardogr/djangorf-base/blob/master/LICENSE)

Base django rest framework for other DRF projects

## :bookmark_tabs: Table of Contents

0. [Tech stack](#tech-stack)
0. [Prometheus](#prometheus)
0. [Contributing](#family-contributing)
0. [License](#page_with_curl-license)

# Tech stack

- Django Rest Framework
- MySQL
- Prometheus

# Prometheus

## Some available metrics

- django_http_requests_body_total_bytes_bucket
- django_http_responses_body_total_bytes_bucket
- django_http_requests_latency_seconds_by_view_method_bucket
- django_http_requests_latency_including_middlewares_seconds_bucket

- prometheus_http_requests_total
- prometheus_http_request_duration_seconds_bucket
- prometheus_http_response_size_bytes_bucket

## PromQL queries examples

- sum(rate(django_http_requests_latency_seconds_by_view_method_bucket[30s])) BY (job, method)
- sum(rate(django_http_responses_body_total_bytes_bucket[30s])) by (job)

# :family: Contributing

# :page_with_curl: License

This project is licensed under the [Apache license](https://github.com/eduardogr/evalytics/blob/main/LICENSE).
