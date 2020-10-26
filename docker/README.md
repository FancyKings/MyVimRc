- docker-ce
  
  > 
  
  - CentOS / RedHat / Fedora
    > For Fedora: centos -> fedora
    ```shell
    sudo yum remove docker docker-common docker-selinux docker-engine
    sudo yum install -y yum-utils device-mapper-persistent-data lvm2
    curl -o /etc/yum.repos.d/docker-ce.repo https://mirrors.ustc.edu.cn/docker-ce/linux/centos/docker-ce.repo
    #wget -O /etc/yum.repos.d/docker-ce.repo https://mirrors.tuna.tsinghua.edu.cn/docker-ce/linux/centos/docker-ce.repo
    sed -i 's#download.docker.com#mirrors.ustc.edu.cn/docker-ce#g' /etc/yum.repos.d/docker-ce.repo
    sudo yum makecache fast
    sudo yum install docker-ce
    ```
  
  - Ubuntu / Debian
    > For Debian: ubuntu -> debian
    ```shell
    sudo apt-get remove docker docker-engine docker.io
    sudo apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository \
      "deb [arch=amd64] https://mirrors.ustc.edu.cn/docker-ce/linux/ubuntu \
      $(lsb_release -cs) \
      stable"
    #sudo add-apt-repository \
    # "deb [arch=amd64] https://mirrors.tuna.tsinghua.edu.cn/docker-ce/linux/ubuntu \
    # $(lsb_release -cs) \
    # stable"
    sudo apt-get update
    sudo apt-get install docker-ce
    ```  
 
- docker 客户端

  ```shell
  cp  /etc/docker/daemon.json{,-bak}
  curl -sSL https://cdn.jsdelivr.net/gh/FancyKings/scripts/docker/daemon.json > etc/docker/daemon.json
  ```

- 镜像站点测速

  ```shell
  curl -sSL https://cdn.jsdelivr.net/gh/lework/script/shell/docker_hub_speed_test.sh | bash
  ```

- docker.io 镜像加速
  
  ```shell
  docker pull dockerhub.azk8s.cn/library/centos
  ```

- gcr.io 镜像加速

	```shell
  docker pull gcr.azk8s.cn/google_containers/kube-apiserver:v1.16.3
  docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/kube-apiserver:v1.16.3
  ```
  
- quay.io 镜像加速

  ```shell
  docker pull quay.azk8s.cn/coreos/kube-state-metrics:v1.7.2
  ```
  
- 下载gcr镜像

	```shell
  curl -sSL https://cdn.jsdelivr.net/gh/kuailemy123/kubernetes-manual/scripts/getgcr.sh | bash -s gcr.io/google_containers/kube-apiserver:v1.16.3
  ```
  
- 下载k8s镜像

  ```shell
  curl -sSL https://cdn.jsdelivr.net/gh/kuailemy123/kubernetes-manual/scripts/getgcr.sh | bash -s k8s.gcr.io/pause-amd64:3.1
  ```
  
- 指定k8s版本，下载全套件

  ```shell
  curl -sSL https://cdn.jsdelivr.net/gh/kuailemy123/kubernetes-manual/scripts/getgcr.sh | bash -s - -t v1.16.3
  ```
  
- 下载quay.io镜像

  ```shell
  curl -sSL https://cdn.jsdelivr.net/gh/kuailemy123/kubernetes-manual/scripts/getgcr.sh | bash -s quay.io/coreos/kube-state-metrics:v1.7.2
  ```
  
- docker HTTP/HTTPS 代理

  ```shell
  mkdir /etc/systemd/system/docker.service.d/
  cat << 'EOF' > /etc/systemd/system/docker.service.d/http-proxy.conf
  [Service]
  Environment="HTTP_PROXY=http://127.0.0.1:7890/"
  Environment="HTTPS_PROXY=https://127.0.0.1:7890/"
  EOF

  systemctl daemon-reload
  systemctl restart docker
  ```


  
