Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :books do
        collection do
          get 'get_all_data_by_author_name'
        end
      end
    end
  end
end
