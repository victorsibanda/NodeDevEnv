## Node Dev environment

This Environment allows you to vagrant up the development environment and make adjustments to the code. If you make changes in this git repository this will trigger tests to run on Jenkins.

## Prerequisites
To run this environment you will need the below
- Vagrant
- Git
- VirtualBox.

## To Start

```
git clone git@github.com:victorsibanda/NodeDevEnv.git
```

## To Use

```
vagrant up

vagrant ssh app
```

## To Test and Use App :monkey:

```
cd /home/ubuntu/app

npm install
npm test
npm start

```

## To Access the App:

- Goto

```
http://development.local
```


- To see the Blog
```
http://development.local/posts
```


TODO :: #### Suggested Edits for Testing

```
server {
  listen 80;
  listen [::]:80;



  server_name example.com;



  location / {
      proxy_pass http://localhost:3000/;
  }
}
```
