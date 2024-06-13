FROM apache/airflow:2.8.4

USER root
RUN apt-get update && \
    apt-get install -y libpq-dev && \
    chmod 755 gcc

USER airflow
RUN pip install --no-cache-dir psycopg2 psycopg2-binary
RUN pip install --no-cache-dir "apache-airflow==${AIRFLOW_VERSION}" apache-airflow-providers-databricks==6.2.0 dbt-postgres


