# Web Analyser

A ruby programme that processes a webserver log and calculates:

- most popular page views
- unique page views

In this implementation, the path to the webserver log is hard-coded.

Code coverage is 96% (using the SimpleCov gem)

## Run the programme

1. `bundle install`
2. `ruby -r './lib/app.rb' -e 'App.run'`
