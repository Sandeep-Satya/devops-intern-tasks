#!/bin/bash
yum update -y

# install docker properly
amazon-linux-extras install docker -y
systemctl enable docker
systemctl start docker

# wait until docker is ready
sleep 30

# pull image first (avoids timeout)
docker pull strapi/strapi

# run strapi with correct binding
docker run -d -p 1337:1337 \
-e HOST=0.0.0.0 \
-e PORT=1337 \
--name strapi \
strapi/strapi

# #!/bin/bash
# yum update -y
# amazon-linux-extras install docker -y
# systemctl start docker
# systemctl enable docker
# sleep 20
# docker run -d -p 1337:1337 strapi/strapi
