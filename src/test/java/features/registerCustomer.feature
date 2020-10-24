Feature: Testing the API's

Scenario: Get Customer
Given I create a new request with http://localhost:8081/api/ service
And I add the users/user/Kool123 endpoint to the service
And I send the GET request to the service
Then I get the 200 response code
Then I assert the following values in the response body
| userId | Kool123 |
| firstName | mouni |
| lastName | Teja |
| phone | 07448772079 |
| emailId | Kool123@gmail.com |

Scenario: Register Customer
Given I create a new request with http://localhost:8081/api/ service
And I add the users/registrations endpoint to the service
And  I pass application/json as content type
And I send the following values in the request body
| userId | ravi3 |
| firstName | RavitejaSunny |
| lastName | Sunny |
| phone | 9999995895 |
| emailId | ravi3@gmail.com |
And I send the POST request to the service
Then I get the 201 response code
Then I assert the following values in the response body
| message | Data inserted successfully |