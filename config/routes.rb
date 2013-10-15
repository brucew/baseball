Baseball::Application.routes.draw do
  resources :players, only: :index

end