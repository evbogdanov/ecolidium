Rails.application.routes.draw do
  root 'home#index'

  get 'contacts', to: 'contacts#index'
end
