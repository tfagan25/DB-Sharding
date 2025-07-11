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