require 'bundler'
Bundler.require

Cuba.define do
  on get do
    on root do
      res.write 'Hello World!'
    end
  end
end

run Cuba
