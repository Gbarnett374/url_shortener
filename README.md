# Url Shortener 
- This is a basic rails app that takes in a url and generates a shortened url. The returned shortened url will redirect you to the original url. 
- Created using Rails 5.1.6, Ruby 2.4.1, & Postgres 9.6. Also using the Gem ([valid_url](https://github.com/ralovets/valid_url)) for url validation. 

## Getting Started 
1. Please make sure you have Bundler & Postgresql installed. 
2. Clone & cd into this repo then run `bundle install`.
3. Create your database: `rake db:create`.
4. Run the migrations: `rake db:migrate`.
5. Run `rails s` to start the server. 
6. Navigate to `localhost:3000` in your favorite web browser. 
7. To run tests: `rspec`.