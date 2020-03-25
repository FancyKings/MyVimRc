# CDN uri

  - cdn origin uri : https://cdn.jsdelivr.net/gh/FancyKings/scripts/
    
    cdn short uri : http://t.cn/A6ZzfzbV
  
  - Use example
  
    origin : https://github.com/FancyKings/scripts/blob/master/docker/daemon.json
  
    cdn    : https://cdn.jsdelivr.net/gh/FancyKings/scripts/docker/daemon.json
  
# curl

  - File
  
    https://cdn.jsdelivr.net/gh/FancyKings/scripts/maven/settings.xml -> ~/.m2/settings.xml
        
    ```shell
    cp ~/.m2/settings.xml{,-bak}
    curl -sSL https://cdn.jsdelivr.net/gh/FancyKings/scripts/maven/settings.xml > ~/.m2/settings.xml
    ```
    
  - Shell
    
    https://cdn.jsdelivr.net/gh/FancyKings/scripts/os/centos_tuna.sh
    
    ```shell
    curl -sSL https://cdn.jsdelivr.net/gh/FancyKings/scripts/os/centos_tuna.sh | sudo bash
    ```
