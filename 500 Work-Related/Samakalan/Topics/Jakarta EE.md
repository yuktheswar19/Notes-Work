## Maven 
A build automation tool for Java projects that manages dependencies, compiles code, and packages applications. It uses a pom.xml file (Project Object Model) to define project settings, like dependencies and plugins

In pom.xml, Maven defines the project as a WAR (Web Application Archive) via war, pulls in Jakarta EE APIs with the for jakarta.jakartaee-web-api (scope provided means Tomcat provides it at runtime, keeping the WAR lightweight), and uses plugins like maven-war-plugin to build the WAR file

- ### WAR File and Packaging
- A WAR file is a ZIP-like archive for web applications, containing compiled classes, web resources, and configs. Packaging refers to how Maven assembles the project (e.g., into a WAR).

## Servlet
A Java class that handles HTTP requests/responses in a web app, extending HttpServlet. It's part of the Jakarta EE Web Profile for dynamic web content.

- @WebServlet(urlPatterns = "/hello") maps the servlet to the /hello URL. The doGet method processes GET requests, setting the response type to HTML and writing content via PrintWriter. When you visit /hello, Tomcat invokes this method. Analogy: A servlet is like a receptionist who receives visitor requests (HTTP) and responds with information.


## JSP
A technology for creating dynamic web pages using Java code embedded in HTML. It's compiled into servlets at runtime

- index.jsp uses <%@ page %> to define content type and generates static HTML with a link to /hello. Tomcat serves it as the app's root page. Analogy: JSP is like a template for bulletin board signs, mixing static text with dynamic elements.

## CDI (Contexts and Dependency Injection)

CDI is a feature in Jakarta EE that makes it easier to connect different parts of your application. It does two main things:

1. **Dependency Injection (DI)**: Automatically provides objects (called "beans") to other parts of your code that need them, instead of you creating them manually with new.
2. **Contexts**: Manages the lifecycle of these objects (e.g., how long they exist, whether they’re shared across the app or created fresh for each request).

- ### What Are Beans and Their Role in Our Code?
	- A bean is a Java object managed by CDI. It’s a regular class with special annotations (like @ApplicationScoped) that tell CDI to take control of creating and providing it to other parts of the app. Beans are the “workers” or “tools” that CDI manages and delivers where needed