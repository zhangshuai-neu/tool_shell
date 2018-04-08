echo '#java configure' >> /etc/profile
#jdk位置根据自己需要修改
echo 'export JAVA_HOME=/opt/jdk1.8.0_161' >> /etc/profile
echo 'export  CLASSPATH=$:CLASSPATH:$JAVA_HOME/lib/' >> /etc/profile
echo 'export  PATH=$PATH:$JAVA_HOME/bin' >> /etc/profile
