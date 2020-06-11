# maven project demo   
 demo 
使用 maven-assembly-plugin 打包项目 demo      
## 父pom 配置demo    
    1. jar   
    2. jar-with-dependencies    
    3. zip,tar,tar.gz,tar.bz2,jar,dir,war (可在src/main/assembly/assembly.xml配置)    

子modelu中可根据需要自定义


## skip checkstyle 
```
1  
<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-checkstyle-plugin</artifactId>
    <configuration>
        <skip>true</skip>
    </configuration>
</plugin>
2  
<properties>
        <checkstyle.skip>true</checkstyle.skip>
    </properties>
```

