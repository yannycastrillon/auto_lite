# Auto Lite App

### Description
A Ruby on Rails "Autolist Lite" app that allows to retrieve auto's information from an API end-point. Furthermore, it provides functionality to search prices ranges.

### Endpoint
The app API accepts **GET** request to the URI **/vehicles/search** and accepts minimum price and maximum price to be able to get a range of autos and display them on the search
page.

**Endpoint:**
```
GET 'localhost:3000/vehicles/search'
GET 'localhost:3000/vehicles'
GET 'localhost:3000/vehicles/:vin'
```
`vin` -> It´s an unique auto's identifier.

## Versions and Technologies
 * Rails 5.0.7.
 * Ruby 2.3.1p112 (2016-04-26 revision 54768).
 * Embedded ruby to render HTML.
 * Postgres (PostgreSQL) 9.6.3.
 * RSpec, factory bot and Faker.

## Instructions to execute code
* Download the repository to your preferred directory from Github.
* Open a terminal, go to your proyect's directory and run `bundle install` --> Install all your dependencies gems.
* Run `rails server` and then go to `localhost:3000/`.
* Run `rspec spec` on your terminal and all testing suits shold be green.
* On the home page enter the `min` and `max` values to search for the price ranges.

## Key aspects
* Time invested so far: 6.5 hours.
* API data to show the information of each auto on the Search and detail page.
* Basic functionality have test coverage using RSpec. 

## Future requirements
* Add count of the Viewed X times when clicking on each of the auto's details page.
* Add validation regarding the searchable fields on the Home page.
* Add Bootstrap and CSS styling on the pages.
* Refactor some of the code on the Controllers to keep it DRY.

