class HelloRailsController < ApplicationController
  def show
    headers['Content-Type'] = 'text/plain'
    render :text => 'Hello, Rails!'
  end
end
