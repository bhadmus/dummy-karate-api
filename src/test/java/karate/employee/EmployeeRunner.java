package karate.employee;

import com.intuit.karate.junit5.Karate;

class EmployeeRunner {
    
    @Karate.Test
    Karate testApis() {
        return Karate.run("allEmployees").relativeTo(getClass());
    }    

}
