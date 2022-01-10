# UrlCounter

This project fetches pages and returns an object with the following attributes:
```
{
    assets: <array of urls present in <img> tags>,
    links: <array of urls present in <a> tags>
}
```

## Pré-requisites
- Ruby 3.0.1
- Bundler

## Installation

Clone project 

    $ git clone https://github.com/renanlr/url_counter

And then execute:

    $ bundle install

## Usage

Inside project directory execute:

    $ bundle exec rake run -- --url "https://google.com.br" 
