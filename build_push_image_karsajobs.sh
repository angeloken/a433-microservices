echo %CR_PAT% | docker login ghcr.io --username angeloken --password-stdin
docker build -t karsajobs .
docker tag karsajobs ghcr.io/angeloken/karsajobs:latest
docker push ghcr.io/angeloken/karsajobs:latest
