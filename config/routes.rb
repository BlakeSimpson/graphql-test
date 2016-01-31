Rails.application.routes.draw do
  root 'explorer#index'
  post 'graph' => 'api#graph'
end
