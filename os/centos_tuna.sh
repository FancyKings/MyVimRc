sed -e 's!^#baseurl=!baseurl=!g' \
       -e 's!^mirrorlist=!#mirrorlist=!g' \
       -e 's!mirror.centos.org!mirrors.tuna.tsinghua.edu.cn!g' \
       -i /etc/yum.repos.d/CentOS-Base.repo

yum install -y epel-release
sed -e 's!^metalink=!#metalink=!g' \
    -e 's!^#baseurl=!baseurl=!g' \
    -e 's!//download\.fedoraproject\.org/pub!//mirrors.tuna.tsinghua.edu.cn!g' \
    -e 's!http://mirrors\.tuna!https://mirrors.tuna!g' \
    -i /etc/yum.repos.d/epel.repo /etc/yum.repos.d/epel-testing.repo
