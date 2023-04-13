  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  Rails.application.routes.draw do
    get '/hash', to: 'hashing#hash'
    get '/generate_password', to: 'generator#generate_password'
    get '/generate_random_name', to: 'generator#generate_random_name'
    get '/generate_random_number', to: 'generator#generate_random_number'
    get '/compute_function', to: 'common_functions#compute_function'
  end
  
