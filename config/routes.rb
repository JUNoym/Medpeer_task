Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :tests
      resources :ideas, only: %i[show create]
    end
  end
end
