Feature: A dummy api test using karate framework
  

  Background:
    * url 'https://dummy.restapiexample.com'

  Scenario: to return all employees 
    Given path 'api/v1/employees'
    When method get
    Then status 200
    Then match response.data == '#array'

  Scenario: to return a single employee 
    Given path 'api/v1/employee/1'
    When method get
    Then status 200
    Then match response.data.employee_name == 'Tiger Nixon'

  Scenario: create an employee and extract the id
    * def user =
      """
      {
        "name": "John Doe",
        "salary": "3000000",
        "age": "28"
      }
      """

    Given path 'api/v1/create'
    And request user
    When method post
    Then status 200
    Then match response.message == 'Successfully! Record has been added.'

    * def id = response.data.id
    * print 'Newly Created employee id is: ', id

  Scenario: update an employee record 
    * def user =
      """
      {
        "name": "Jane Doe",
        "salary": "5000000",
        "age": "26"
      }
      """

    Given path 'api/v1/update/21'
    And request user
    When method put
    Then status 200
    Then match response.message == 'Successfully! Record has been updated.'
    Then match response.data.age == '26'
    Then match response.data.salary == '5000000'
    Then match response.data.name == 'Jane Doe'

  Scenario: to delete an employee 
    Given path 'api/v1/delete/2'
    When method delete
    Then status 200
    Then match response.message == 'Successfully! Record has been deleted'
    Then match response.data == '2'


    
  