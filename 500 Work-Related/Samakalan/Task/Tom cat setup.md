```
sudo apt update && sudo apt install default-jdk
wget https://downloads.apache.org/tomcat/tomcat-11/v11.0.10/bin/apache-tomcat-11.0.10.tar.gz
tar xzvf apache-tomcat-11.0.10.tar.gz
sudo mv apache-tomcat-11.0.10 /opt/tomcat
cd /opt/tomcat/bin
./startup.sh
```

- To start tomcat, use `./startup.sh`

- Tomcat page will open at [http://localhost:8080](http://localhost:8080)
