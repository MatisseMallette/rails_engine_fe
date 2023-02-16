Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'merchants/index'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/merchants', to: 'api/v1/merchants#index'
end
