Rails.application.routes.draw do
  root 'home#index'

  get 'contacts', to: 'contacts#index'

  # Services in admin interface
  scope 'admin' do
    resources :services
  end

  # Services seen by site visitors
  get 'services', to: 'services#show_all', as: 'all_services'
  get 'services/:slug', to: 'services#show_by_slug', as: 'service_by_slug'
end
