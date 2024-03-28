# Karate API Test for https://dummy.restapiexample.com

## Overview
This repository contains automated API tests using Karate for the REST API hosted at https://dummy.restapiexample.com. The tests cover various endpoints and scenarios to ensure the API functions as expected.

## Dependencies
- [ ] Java Development Kit (JDK) 8 or higher
- [ ] Apache Maven
- [ ] Karate framework

## Setup
1. **Java Development Kit (JDK):** Install JDK 8 or higher on your machine.
2. **Apache Maven:** Install Apache Maven by following the instructions on the official website: https://maven.apache.org/install.html
3. **Karate Framework:** Karate is a single JAR file that can be downloaded manually or included as a Maven dependency. To include Karate in your Maven project, add the following dependency to your `pom.xml` file:
   ```xml
   <dependency>
       <groupId>com.intuit.karate</groupId>
       <artifactId>karate-core</artifactId>
       <version>1.1.0</version>
       <scope>test</scope>
   </dependency>

##  Running the tests
- [ ] Clone this repository to your local machine.
- [ ] Navigate to the project directory.
- [ ] Open a terminal or command prompt.
- [ ] Run the following Maven command to execute the tests: `mvn test`

## Constraints
The API server at https://dummy.restapiexample.com may return a 429 Too Many Requests error when multiple requests are sent simultaneously. This indicates that the server is unable to handle the volume of requests. To mitigate this issue:
    
     Adjust the test scripts to introduce delays between requests to reduce the request rate.

## Contributor
[Ademola Bhadmus](https://www.bhadmusautomates.com)