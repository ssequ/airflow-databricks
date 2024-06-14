FROM apache/airflow:2.8.4

RUN pip install --no-cache-dir dbt-mysql
