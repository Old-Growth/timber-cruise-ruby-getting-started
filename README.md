# TimberCruise Getting Started - Ruby

A simple MetricKit payload collector for TimberCruise.

## Running Locally

```terminal
$ git clone https://github.com/old-growth/timber-cruise-ruby-getting-started.git # or clone your own fork
$ cd timber-cruise-ruby-getting-started
$ bundle install
$ export DATABASE_URL="postgres:///metrics"
$ bundle exec puma # http://localhost:9292
```

## Deploying to Heroku

```terminal
$ heroku create
$ git push heroku master
$ heroku open
```

or

[![Deploy to Heroku][Deploy to Heroku Button]][Deploy to Heroku]

[Deploy to Heroku]: https://www.heroku.com/deploy/?template=https://github.com/old-growth/timber-cruise-ruby-getting-started
[Deploy to Heroku Button]: https://www.herokucdn.com/deploy/button.svg
