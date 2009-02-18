class DjangoMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, response = @app.call(env)
    new_response = []
    response.each do |part|
      new_response << part.gsub(/Rails/, 'Django')
    end
    [status, headers, new_response]
  end
end
