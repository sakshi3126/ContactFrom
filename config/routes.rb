Rails.application.routes.draw do
  get 'errors/not_found'
  # root 'contacts#contact'
  root to: "contacts#contact"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root to: "application#contact
  match '/404', to: 'errors#not_found', via: :all
end
