## Node Dev environment

This Environment allows you to vagrant up the development environment and make adjustments to the code. If you make changes in this git repository this will trigger tests to run on Jenkins.

## Prerequisites
To run this environment you will need the below
- Vagrant
- Git
- VirtualBox.
- Atom

## To Start

```
git clone git@github.com:victorsibanda/NodeDevEnv.git
```

Once cloned you may edit the app on your machine and when you git push to a dev* branch. This will trigger a CI pipeline.

## CI Pipeline

The CI pipeline is on Jenkins and the way it works is by firstly pulling from the dev branch. Once this is done, this will run tests on the newly edited code.


If the tests are successful and the Jenkins job is complete, It will merge the dev branch to the master branch and this is continuous integration.

To make any further changes git pull the master branch to allow for those changes to be reflected locally and you may repeat this process.  

## To use VM

```
vagrant up

vagrant ssh app
```

### Testing Application Locally (Inside VM)

```
cd /home/ubuntu/app

npm install
npm test
```

## To Launch the App Locally


```
cd /home/ubuntu/app

npm install
npm start

```
- When this is done visit:
### Homepage

``development.local``

Displays a simple homepage displaying a Sparta logo and message. This page should return a 200 response.

### Blog

``development.local/posts``

This page displays a logo and 100 randomly generated blog posts. The posts are generated during the seeding step.

This page and the seeding is only accessible when a database is available and the DB_HOST environment variable has been set with it's location.

### A fibonacci number generator

``development.local/fibonacci/{index}``

This page has be implemented poorly on purpose to produce a slow running function. This can be used for performance testing and crash recovery testing.

The higher the fibonacci number requested the longer the request will take. A very large number can crash or block the process.
