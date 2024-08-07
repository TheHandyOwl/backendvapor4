# Backend Vapor 4

## GitHub
https://github.com/TheHandyOwl/backendvapor4

## Information
This repository allows you to have your own server to test your basic applications.

First of all, we create an API to have our own [jsonplaceholder API](https://jsonplaceholder.typicode.com/). Some routes will be created, but not all.

At this time, we do not use LEAF or FLUENT. Maybe in the near future.

## Settings
Steps:
1. Clone the repository
2. Change the default folder, configured in your own scheme > Edit scheme > Run > Options > Working directory. Then you should check it and set up your own folder.
3. Create a new '.env' file in your main folder. Some files at the same level are Dockerfile or this README.md. After that, you can look for an example in the 'Config' folder called 'env_example'

An example:
```
PORT=8080
```

## Routes

### Main route
```
/ --> Main route shows just a 'Vapor ok!' message
```

### api

#### jsonplaceholder API. Contains static data
```
/api/jsonplaceholder/albums --> 100 albums
/api/jsonplaceholder/comments --> 500 comments
/api/jsonplaceholder/photos --> 5000 photos
/api/jsonplaceholder/posts --> 100 posts
/api/jsonplaceholder/todos --> 200 todos
/api/jsonplaceholder/users --> 10 users
```