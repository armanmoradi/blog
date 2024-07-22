Rails.application.routes.draw do
  devise_for :users
#   devise_for :users do
#     get "/login", :to => "devise/sessions#new" # Add a custom sign in route for user sign in
#     get "/logout", :to => "devise/sessions#destroy" # Add a custom sing out route for user sign out
#     get "/register", :to => "devise/registrations#new" # Add a Custom Route for Registrations
#  end
# devise_for :users, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :blog_posts

  # Defines the root path route ("/")
  root "blog_posts#index"
end
