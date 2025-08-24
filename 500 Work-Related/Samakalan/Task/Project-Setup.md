
- Run: 
	[[mvn archetype:generate -DgroupId=com.example -DartifactId=task-app -DarchetypeArtifactId=maven-archetype-webapp -DinteractiveMode=false]]

**if error, fix by adding latest version of maven-war-plugin** :
[https://stackoverflow.com/questions/67168999/maven-error-cannot-access-defaults-field-of-properties](https://stackoverflow.com/questions/67168999/maven-error-cannot-access-defaults-field-of-properties)

```html
 <plugins>
    <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-war-plugin</artifactId>
        <version>3.4.0</version>
    </plugin>
    <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-compiler-plugin</artifactId>
    </plugin>
  </plugins>
```


- To compile, run `mvn package`

- in `target` folder, `.war` file will be generated, open tomcat admin page and add it [https://www.youtube.com/watch?v=kIhj43QHREc](https://www.youtube.com/watch?v=kIhj43QHREc)
