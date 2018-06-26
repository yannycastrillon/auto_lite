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

## Instructions to execute code
* Download the repository to your preferred directory from Github.
* Open a terminal, go to your proyect's directory and run `bundle install` --> Install all your dependencies gems.
