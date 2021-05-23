# Spring Security App For Practice
This is a training exercise from [Udemy course](https://www.udemy.com/course/spring-hibernate-tutorial/) on Spring Security

### Basic Security steps

- Spring Security Web App Initializer(Extend off the AbstractSecurityWebApplicationInitializer)

- Config class extend off the WebSecurityConfigurerAdapter

- Add users, passwords and roles (inMemory auth first and drop in database later)

### Custom Login Form 

- **Rename Context Roots.** Properties -> Web Project Settings -> Context root, then your application will be run on path: http://localhost:8080/Context root.

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

-


### Restrict Access Based On Roles

### Database Authentication

### Password Encryption


