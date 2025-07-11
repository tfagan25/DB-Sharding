# DB-Sharding
Playing around with local db sharding setup.

## Plan

- Frontend for visualizing Prometheus data on DB writes + reads (latency, count), as well as scaling the QPS.
- Backend for making DB queries at high volume to simulate contention.
- Multiple Postgres servers running to act as shards.
- Prometheus monitoring.

### Optional

- After running locally, add CI/CD + deploy externally
- DB replication
- Backups
- Etc.