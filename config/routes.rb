Rails.application.routes.draw do
  devise_for :admins, skip: [:registrations], controllers: {sessions: 'admins/sessions'}

  scope :admin do
    root to: "admin/home#index"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
