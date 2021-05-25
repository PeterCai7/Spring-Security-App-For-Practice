# Spring Security App For Practice
This is a training exercise from [Udemy course](https://www.udemy.com/course/spring-hibernate-tutorial/) on Spring Security

### Basic Security steps

- Spring Security Web App Initializer(Extend off the AbstractSecurityWebApplicationInitializer)

- Config class extend off the WebSecurityConfigurerAdapter

- Add users, passwords and roles (inMemory auth first and drop in database later)

### Custom Login Form 

- **Rename Context Roots.** Properties -> Web Project Settings -> Context root, then your application will be run on path: localURL:PortNum/Context root.

- **Testing with a new private window(Incognito in Chrome).** User login is based on a web browser session so they'll automatically be logged in once the session is running. (Only an issue for dev and testing)

- **Custom Login Form.** Modifying configuration, configure(HttpSecurity) -> Develop LoginController -> Login form in JSP file (Send data to /authenticateTheUser), use SpringMVC form tag, and Context Path -> Add Error Message(append error parameter to URL with help of jstl).

### Bootstrap CSS Login Form

- Bootstrap is a web front end Frame work: [Here](https://www.w3schools.com/bootstrap/) is a good tutorial. [Official documentation.](https://getbootstrap.com/docs/5.0/getting-started/introduction/).

- How to add local CSS file for Spring Security Login Form? You have to configure Spring Security of allow unauthenticated requests to "/css" directory. And Configure the all Java config to serve content from "/css" directory(implement the WebMvcConfigurer Interface).

### Logout Support

- Add Logout support to Spring Security Configuration, using defualt URL /logout.

- Logout button for sending data to /logout, which will be handled by Spring Security Filters.

- Checke the logout parameter appended by Spring Security and display some message

### Cross Site Request Forgery

- Spring MVC Form provides automatic support for security defenses.

- What is CSRF? A security attack where an evil website tricks you into executing an action on a web application that you are currently logged in.

- CSRF Protection: Embed additional token into HTML forms. Spring MVC form tag adds token automatically along with a session cookie for you.

- Spring Security filter handles this by default.

- Reference: [CSRF Security Reference](https://owasp.org/www-community/attacks/csrf), [Spring Security Support](https://docs.spring.io/spring-security/site/docs/current/reference/html5/#csrf)


### Restrict Access Based On Roles

- Display User ID and Roles: Spring Security Tag Library, security:authenication tag.

- Supporting Controller code and View Pages.

- Add restrict configuration: antmatch().hasrole()

- Customize "Access Denied" Page.

- Display content based on Roles. Using security:authorize tag. Protected content is not hidden so users cannot backdoor it.


### Database Authentication

- **Exciting Feature:** Spring Security can read user account info from database; We have to follow Spring Security's predefined table schemas by default; What's more: it also includes JDBC code to read info. 

- **Development Process:** 1.SQL scripts to set up database tables; 2.Add database support to Maven POM file. 3.JDBC Properties File. 4.Define DataSource in Spring Configuration. 5.Update Spring Security Configuration to use JDBC.

### Password Encryption

- Spring Security recommends using the popular bcrypt algorithm (one-way encrypted hashing with random salting) which means encrypted password is never decrypted. Additional Information: [why-bcrypt](https://danboterhoven.medium.com/why-you-should-use-bcrypt-to-hash-passwords-af330100b861), [detailed algorithm analysis](https://en.wikipedia.org/wiki/Bcrypt), [Password hashing - best practices](https://crackstation.net/hashing-security.html).

- Development Process: 1. Modify DDL for password field(8 + 60 characters) and update encrypted passwords({id}password). 2. Update JDBC configure properties.


### Bonus

[Custom Table Schema And User registration](https://www.udemy.com/course/spring-hibernate-tutorial/learn/lecture/9552122#overview), [Add to CRM App](https://www.udemy.com/course/spring-hibernate-tutorial/learn/lecture/9060648#overview), [Public Landing Page](https://www.udemy.com/course/spring-hibernate-tutorial/learn/lecture/23616514#overview)









