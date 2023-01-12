Rails.application.routes.draw do
  root to: "links#index"
  resources :links
  get '/:slug', to: 'links#show', as: :short
  delete 'links/:id', to: 'links#destroy'
end
