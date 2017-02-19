Rails.application.routes.draw do

  resources :cocktails, only: [:create, :new, :show, :index, :destroy] do
    resources :doses, only: [:create, :new, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
