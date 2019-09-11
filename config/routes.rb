Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions:      'users/sessions' ,
    registrations: 'users/registrations',
    passwords:     'users/passwords',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  root 'items#index'

  resources :users do
    collection do
      get "logout"
      get "profile"
    end
  end

  resources :personal_infos

  resources :cards do
    collection do
      get "payment"
      get "add"
    end
  end
  
  resources :items do
    member do
      get "detail"
    end
    collection do
      get "confirmation" 
      get "complete"
      get "sellingitem"
      get 'get_image', defaults: { format: 'json' }
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
      get '/:id/edit/get_category_children', to: 'items#edit_get_category_children', defaults: { format: 'json' }
      get '/:id/edit/get_category_grandchildren', to: 'items#edit_get_category_grandchildren', defaults: { format: 'json' }
    end
  end
  
  resources :signup do
    collection do
      get 'type'
      get 'sms' 
      get 'completed' 
    end
  end 

end
