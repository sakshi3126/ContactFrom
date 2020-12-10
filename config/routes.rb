Rails.application.routes.draw do
  scope "(:locale)", locale: /en|ru/ do
    # root to: "contacts#contact"
    root to: 'contacts#contact'
    resources :contacts, only: %i[contact create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root to: "application#contact
  match '/404', to: 'errors#not_found', via: :all
end
