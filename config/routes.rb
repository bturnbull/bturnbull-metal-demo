ActionController::Routing::Routes.draw do |map|
  map.connect 'hello/rails', :controller => 'hello_rails', :action => 'show'
end
