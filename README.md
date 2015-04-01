HTML Document Viewer
======
Basic Sinatra app template running Foundation with Compass
===

Run <code>bundle exec compass watch</code> to compile css styles.

TODO
-------

* Try to run racklivereload with Sinatra
* Codemirror folding
* Add authentication
* Test document CRUD
* Mongodb: Check atomic update for images
* Check HTML5 text autoselect for image url
* Check: [http://blog.sourcing.io/structuring-sinatra](http://blog.sourcing.io/structuring-sinatra)

MongoDB Notes
------
Running in Heroku using [mogolab](https://devcenter.heroku.com/articles/mongolab#what-version-of-mongodb-will-my-database-be-running)

Use the heroku config command to view your app’s config variables.
`` heroku config | grep MONGOLAB_URI
MONGOLAB_URI => mongodb://heroku_app1234:random_password@ds029017.mongolab.com:29017/heroku_app1234``

mongodb://heroku_app35427255:jev5drltd7tdqrt04iovi6i2bc@ds059821.mongolab.com:59821/heroku_app35427255

Accesing the MongoLab UI Admin
heroku addons:open mongolab
