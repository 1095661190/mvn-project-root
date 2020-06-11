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
## IDEA 安装Alibaba Java Coding Guidelines plugin
 1. Settings >> Plugins >> Browse repositories...   
 Search plugin by keyword 'alibaba' then install 'Alibaba Java Coding Guidelines' plugin
 
 2. Code Analyze
 Tools >> Alibaba Java Coding Guidelines >> Analyze


## IDEA 安装checkstyle插件

 Settings → Plugins → CheckStyle-IDEA

## Code style
mac   command+alt+L  
google-java-format plugin  
Google 在 GitHub 上有一个专门放置编码规范的仓库，地址在：  
https://github.com/google/styleguide。  

```
Install the google-java-format plugin by following these steps:  
Go to File → Settings → Plugins.  
Click on Browse Repositories.  
Search for the plugin google-java-format.  

Install it.
  
Restart IntelliJ.

Every time you start IntelliJ, make sure to use Code → Reformat with google-java-format on an arbitrary line of code. This replaces the default CodeStyleManager with a custom one. Thus, uses of Reformat Code either via Code → Reformat Code, keyboard shortcuts, or the commit dialog will use the custom style defined by the google-java-format plugin.
```
Code style settings
```
The google-java-format plugin is the preferred way to format the code. As it only kicks in on demand, it’s also recommended to have code style settings which help to create properly formatted code as-you-go. Those settings can’t completely mimic the format enforced by the google-java-format plugin but try to be as close as possible. So before submitting code, please make sure to run Reformat Code.
Download intellij-java-google-style.xml.

Go to File → Settings → Editor → Code Style.

Click on Manage.

Click on Import.

Choose IntelliJ IDEA Code Style XML.

Select the previously downloaded file intellij-java-google-style.xml.

Make sure that Google Style is chosen as Scheme.

In addition, the EditorConfig settings (which ensure a consistent style between Eclipse, IntelliJ, and other editors) should be applied on top of that. Those settings are in the file .editorconfig of the Gerrit source code. IntelliJ will automatically pick up those settings if the EditorConfig plugin is enabled and configured correctly as can be verified by:

Go to File → Settings → Plugins.

Ensure that the EditorConfig plugin is enabled.

Go to File → Settings → Editor → Code Style.

Ensure that Enable EditorConfig support is checked.
```


