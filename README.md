# Jungle Project

A mini e-commerce application built with Rails 4.2. It is a responsive MPA using a Rails backend with Active Record. The main functionality of the app is being able to peruse items and make purchases, as a user. As an admin you can create new items, manage inventory.

Technologies used include Ruby on Rails, SASS, Postgres server-side, RSpec and Capybara for development and testing.

Jungle is not suitable for real-world production use and is only for demonstration and educational purposes.

## Final Product Screenshots

!["Screenshot of homepage"](https://github.com/KagisoMashigo/Jungle/blob/master/app/assets/images/Screenshot%20from%202021-01-13%2014-23-02.png?raw=true)

!["Screenshot of new appointment"](https://github.com/KagisoMashigo/Jungle/blob/master/app/assets/images/Screenshot%20from%202021-01-13%2014-23-14.png?raw=true)

!["Screenshot of deleting appointment"](https://github.com/KagisoMashigo/Jungle/blob/master/app/assets/images/Screenshot%20from%202021-01-13%2014-23-30.png?raw=true)

!["Screenshot of deleting appointment"](https://github.com/KagisoMashigo/Jungle/blob/master/app/assets/images/Screenshot%20from%202021-01-13%2014-23-41.png?raw=true)

!["Screenshot of deleting appointment"](https://github.com/KagisoMashigo/Jungle/blob/master/app/assets/images/Screenshot%20from%202021-01-13%2014-24-13.png?raw=true)

!["Screenshot of deleting appointment"](https://github.com/KagisoMashigo/Jungle/blob/master/app/assets/images/Screenshot%20from%202021-01-13%2014-24-25.png?raw=true)

!["Screenshot of deleting appointment"](https://github.com/KagisoMashigo/Jungle/blob/master/app/assets/images/Screenshot%20from%202021-01-13%2014-24-40.png?raw=true)

# Development:

## Getting Started

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Directory Structure
```sh
./                 Main project repository
./app              Main app functionality including controllers, models and views
./bin              Meta data
./config           Various configurations including environment variables
./db               db schema, migration and seeds
./lib              Axios mocks
./log              Keeps logs
./public           Public assests and icons
./spec             RSpec Test Suite
./vendor           Meta data
```

## Dev Dependencies
```sh
- Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
- PostgreSQL 9.x
- Stripe
```

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

