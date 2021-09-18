Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :users, only: %i[show create]
      resources :chatrooms, only: %i[show create] do
        resources :messages, only: %i[show create]
      end
      # resources :login, only: %i[create]
      # resources :auto_login, only: %i[create]
    end
  end
end
