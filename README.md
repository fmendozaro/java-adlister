# Java Adlister - Craiglist Clone

## Getting Stared

This project uses a mysql-connector dependency that is looking for a `Config.java` file in the `src/main/java/com/codeup/adlister/dao` directory, make sure you create your own file and looks like this.

```java
class Config {
    public String getUrl() {
        return "jdbc:mysql://localhost/database_name?serverTimezone=UTC&useSSL=false";
    }
    public String getUser() {
        return "someuser";
    }
    public String getPassword() {
        return "strongpassword";
    }
}
```