Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :friends
  get 'home/index'


  # scope '/hello' do
  #   get 'home/about'
  # end

  scope shallow_path: "sekret" do
    get 'home/about',  shallow: true
  end

  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
