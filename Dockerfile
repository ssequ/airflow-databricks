FROM apache/airflow:2.8.4

RUN apt-get update && \
    apt-get install -y libpq-dev
    
RUN pip install --no-cache-dir "apache-airflow==${AIRFLOW_VERSION}" apache-airflow-providers-databricks==6.2.0 psycopg2 psycopg2-binary dbt-postgres
