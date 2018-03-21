# Docker Redis
This is simply a repackaging of the latest Redis docker repository with a custom configuration file.

# Setup
You may need to disable THF and can in a privileged container by the following
```
docker run -ti --privileged ubuntu /bin/bash
echo never | tee /sys/kernel/mm/transparent_hugepage/enabled
echo never | tee /sys/kernel/mm/transparent_hugepage/defrag
```

# Build
`docker build -t mikesparr/docker-redis .`

# Deploy
`docker login`
`docker push mikesparr/docker-redis`

# Run
`docker run --name redis-server -p 6379:6379 -v <local path>:/data -d mikesparr/docker-redis`
