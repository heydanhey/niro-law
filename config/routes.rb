Rails.application.routes.draw do
  resources :lawyers
  
  root to: "pages#home"
end
