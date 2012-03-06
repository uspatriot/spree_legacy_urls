Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  
  match '/:id' => 'products#attempt_301_redirect'
  
  
end
