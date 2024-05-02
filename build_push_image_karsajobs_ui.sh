#menghubungkan local pc ke github packages
echo %CR_PAT% | docker login ghcr.io --username angeloken --password-stdin
#build image untuk karsajobs-ui dari dockerfile
docker build -t karsajobs-ui .
#mengubah tag images yang sudah dibuat sesuai dengan format akun github packages
docker tag karsajobs-ui ghcr.io/angeloken/karsajobs-ui:latest
#push image ke github packages
docker push ghcr.io/angeloken/karsajobs-ui:latest