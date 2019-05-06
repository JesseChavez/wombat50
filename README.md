# Sample Rails 5.0 app with SQL Server

This app was created with


```
rails new wombat -d jdbc
```

Changed some gems to work with SQL Server

```ruby
platforms :jruby do
  # Use jdbc as the database for Active Record
  gem 'activerecord-jdbc-alt-adapter', '~> 50.3.0', require: 'arjdbc'
  gem 'jdbc-mssql', '~> 0.6.0'
end
```

Changed database connections settings to


```yml
# SQL Server (2012 or higher recommended)
# Ensure to add the right port if you are
# not using the default port 1433

default: &default
  adapter: sqlserver
  encoding: utf8

development:
  <<: *default
  host: localhost
  database: wombat_development
  username: dev
  password: password

test:
  <<: *default
  host: localhost
  database: wombat_test
  username: test
  password: password

production:
  <<: *default
  host: localhost
  database: wombat_production
  username: wombat
  password: <%= ENV['WOMBAT_DATABASE_PASSWORD'] %>
```


Scaffolded some imaginary pets records:


```
bin/rails g scaffold category name:string description:text
```


```
bin/rails g scaffold pet category:references name:string price:decimal age:integer desexed:boolean description:text
```
