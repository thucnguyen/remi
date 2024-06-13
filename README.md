# README

This is a small project, helping to share Youtube movies. It also introduces real-time notifications using actioncable.

* Ruby version
2.7.7

* Rails version
6.1.7.6

* System dependencies
Rails
Mysql 8
Redis 
Rspec

* Installation & Configuration
1. Clone it from github
git clone https://github.com/thucnguyen/remi.git

* Configuration
1. Install mysql
```
brew install mysql
```
2. Install Redis
```
brew install redis
```

3. Change database.yml to meet with you local enviroment, db name, password, etc
* Database creation
In the project folder
```
rails db:create
rails db:schema:load
```
This will be create database struture

* Running the Application
Running test
```
rspec 
```
For running application in development mode
```
rails s
```
For accessing application on web, visit http://localhost:3000/
