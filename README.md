# Demo sinatra app with GOV.UK style

A skeleton project of a sinatra app with some [GOV.UK styling](https://frontend.design-system.service.gov.uk/). I start this to try out how to incorporate the GOV.UK styles in a webapp.

## How to run locally
```shell
npm install
bundle install

bundle exec rackup
```
then visit localhost:9292

## how should it look like (if running successfully)

Here is a working demo hosted on heroku: 
https://mt-alpaca-license-service-demo.herokuapp.com/ 

![screenshot](screenshot-2022-03-16.png)

## where is the sass/css file?

I found two ways to introduce the sass file into the page.
1. Set a get endpoint for your css file explicitly (currently used in this setup)
```ruby
get '/main.css' do
  sass :main
end
```
then, in your html page / erb template, add a link to main.css

Note: in this repo, main.sass imports its content from node_modules, so if you are going to host on some web service (e.g. heroku) you may need some extra work to make it install node packages.

2. Serve the css file from public folder (commented out in layout.erb and config.ru)

Here, I put a copy of sass file at public/stylesheets/sass/main.sass.
Seems that the rack plugin setup in my config.ru can load this .sass and compile it to public/stylesheets/main.css automatically.
If on your machine this auto-compilation didn't happen, you can try manually compile sass to css and serve that file.

## other assets? (fonts/images/js)
All are in `public` directory. Didn't figure out how to serve them from app folder yet.
webpack or sprockets seems promising, but for this demo project I am fine with serving from public folder.

## Disclaimer
This website was built as a demo project solely for self study purpose.
It is not related to any real-world government service.

I have no clue on whether you need a license to breed your alpaca in UK or not. Consult your local alpaca expert if you need help.