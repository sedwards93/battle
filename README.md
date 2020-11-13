## Setting up the environment

 - Created a new directory `Battle`. I ran `bundler init` to create a Gemfile. I amended the file to include the rspec and sinatra gems.
 - Added a file named `app.rb` to the root of my directory. 
 - I set up Sinatra using the modular style by adding the following to the top of my app.rb file:
	 `require 'sinatra/base`
	 `class Battle < Sinatra::Base`
	  `end`
 - Defining apps like this at the top level is only suitable for micro-applications.
 - I have defined my Battle class as a subclass of the Sinatra::Base. My class will inherit all of the DSL of sinatra. 
 - I added `run! if app_file == $0` at the end of my Battle class so that the server starts if the ruby file 'app.rb' is run directly.
 - Rack is a ruby framework that responds to the method call(env), and returns an array of three elements: status, header and body. This standardised rack API means that any application we build that is Rack compatible works on any server that implements a Rack handler. 
 - I therefore created a `config.ru` (rackup file), which allows my `app.rb` to be run using any Rack handler:
`require './app'`
`run Battle`

## Setting up Capybara

 - I added capybara to the Gemfile. 
 - Since the my app is a Rack app, I explicitly set the following in my RSpec helper file:
 `Capybara.app = Battle`
 - I added the following to my spec_helper
 `require 'capybara'`
 `require 'capybara/rspec'`
 `require 'rspec'`
 `ENV['RACK_ENV'] = 'test'`
 `Capybara.app = Battle`
 `require require File.join(File.dirname(__FILE__), '..', 'app.rb')`
 
 - Inside the spec directory I created a `features` directory to house all of my feature tests, which I will write using Capybara. My unit tests will be written in a separate folder in vanilla RSpec. 

 ## New concepts
 
 - A new concept that we learnt about was the POST/ redirect / GET pattern. It is important to separate POST requests and the rendering of their view. This allows the page shown after a form submission to be reloaded, shared, or bookmarked without ill effects, such as submitting the form another time. 
 - The way we did this was to use a sinatra session. A session is a short-term information store that lives on the server. It allows basic pieces of information to be stored across multiple requests. 
 - I added the line `enable :sessions` within my Battle class. 
 - In the `post '/names'` route I stored the player names in the session instead of assigning them as instance variables. 
	 `session[:player_1_name] = params[:player_1_name]`
 - I then redirected to the '/play' route.
 - To keep my spec folder DRY, I set up a helper class, by creating a new spec folder within the features folder named `web_helpers.rb`. I amended my spec_helper document to require this file. 
 - To conform with the separation of concerns principle, I  extracted the responsibility of the session to a new class named `Players`. This class makes up part of the model layer of my app. 
