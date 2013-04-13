require 'bundler'
Bundler.require

class App < Sinatra::Base
  get '/' do
    'Hello World!'
  end
end

run App
