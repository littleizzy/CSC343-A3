<b>Test Driven Development</b> 

Since our team would implement the backend using node.js, we chose Mocha, a JavaScript testing framework to automate the testing of the RESTful API. Along with Chai, a TDD assertion library for node, and Chai-Http, a HTTP integration testing. (I'm assuming)None of us have experience working with this framework before but it should be very easy to learn. So the plan is, before we implement the API, we would create unit tests using Mocha, Chai and Chai-Http and that each time we add/improve a functionality, it can be tested easily. 


<b>Continuous Integration</b>

We will be using Travis for continuous integration as it is the most convinient way. Plus it works well with github. The plan is, we set up our repository with travis, do the setting and create the instruction file. And then whenever we push to the repo, Travis will try to build and test it. 



