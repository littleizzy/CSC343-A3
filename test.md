Test Driven Development 

Since our team would implement the backend using node.js, we chose Mocha, a JavaScript testing framework to automate the testing of the RESTful API. Along with Chai, a TDD assertion library for node, and Chai-Http, a HTTP integration testing. (I'm assuming)None of us have experience working with this framework before but it should be very easy to learn. So the plan is, before we implement the API, we would create necessary unit tests using Mocha, Chai and Chai-Http and that each time we add/improve a functionality, it can be tested easily. 


Continuous Integration

We will be using Travis as our continuous integration tool.
