require 'bundler'
Bundler.require

class App < Hobbit::Base
  get '/' do
    'Hello World!'
  end
end

run App.new
