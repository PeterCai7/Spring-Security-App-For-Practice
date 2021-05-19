# Training-App-Spring-Security
This is a training app from [Udemy course](https://www.udemy.com/course/spring-hibernate-tutorial/) on Spring Security

### Basic Security steps

- Spring Security Web App Initializer(Extend off the AbstractSecurityWebApplicationInitializer)

- Config class extend off the WebSecurityConfigurerAdapter

- Add users, passwords and roles (inMemory auth first and drop in database later)

### Custom Login Form 

- Rename Context Roots. Properties -> Web Project Settings -> Context root, then your application will be run on path: http://localhost:8080/Context root.

- Testing with a new private window(Incognito in Chrome). User login is based on a web browser session so they'll automatically be logged in once the session is running. (Only an issue for dev and testing)
