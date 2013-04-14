require 'bundler'
Bundler.require

class Hello
  def self.call(env)
    case env["PATH_INFO"]
      when "/" then [200, { "Content-Type" => "text/plain" }, ["Hello World"]]
      else [404, { "Content-Type" => "text/plain" }, ["404 Not Found"]]
    end
  end
end

run Hello
