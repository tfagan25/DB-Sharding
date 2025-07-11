# DB-Sharding
Creating the most overly-engineered test project. Why - for fun :)

## Plan

- Grafana for visualizing Prometheus data on DB writes + reads (latency, count), as well as scaling the QPS.
- Backend for making DB queries at high volume to simulate contention.
- Multiple Postgres servers running to act as shards.
- Prometheus monitoring.
- Fully automate CI/CD pipeline for deploying
- Use Terraform for managing AWS compute - EC2 instances.

### Later

- DB replication
- Backups
- Read/Write Replicas
- Load balancing
- React frontend

## Idea

Make interactive UI to be able to handle different aspects of database performance with visualizations for
multiple different database configurations - AKA load testing visualization for databases. Compare visually just a
database, a vertically scaled database, a database with sharding, a database with Read/Write replicas, 
add Redis caching layer inbetween DB, geo sharding. Have toggles for reads/writes per second, introduce DB 
inserts at scale to introduce hotspots for sharding.