Rails.application.routes.draw do
  resources :testimonials, except: [:show] do
    get 'manage', on: :collection
  end
end
