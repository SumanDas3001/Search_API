Rails.application.routes.draw do
  devise_for :users
  namespace 'api' do
    namespace 'v1' do
      resources :users
      resources :books do
        collection do
          get 'get_all_data_by_author_name'
        end
      end
    end
  end
end
