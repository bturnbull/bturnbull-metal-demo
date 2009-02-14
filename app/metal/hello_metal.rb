require(File.dirname(__FILE__) + "/../../config/environment") unless defined?(Rails)

class HelloMetal
  def self.call(env)
    if env["PATH_INFO"] =~ /^\/hello\/metal/
      [200, {"Content-Type" => "text/plain"}, ["Hello, Metal!"]]
    else
      [404, {"Content-Type" => "text/html"}, ["Not Found"]]
    end
  end
end
