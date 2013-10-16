Baseball::Application.routes.draw do
  resources :seasons, only: '' do
    resources :players, only: :index
  end

  root to: redirect('/seasons/1998/players')
end