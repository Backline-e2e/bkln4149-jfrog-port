# bkln4149-jfrog-port

E2E fixture for Backline's JFrog Artifactory container-registry integration (BKLN-4149).

- `Dockerfile` builds a tiny image `FROM 192.168.65.254:5081/apps/debian:12.5-slim`. Port 5081 is a
  self-hosted-style Artifactory **port-method** address: a reverse proxy rewrites `/v2/...` to
  `/artifactory/api/docker/bkln4149-docker-local/v2/...`.
- The JFrog integration stores the repository-path address `http://192.168.65.254:5080`, i.e. the same
  host on another port.
- The built image is published as `192.168.65.254:5081/apps/bkln4149-jfrog-port:1.0.0`.
