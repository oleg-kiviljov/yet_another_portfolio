Rails.application.routes.draw do
  root 'pages#index'
  post 'contact' => 'pages#contact'
end
