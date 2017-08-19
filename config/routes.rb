Rails.application.routes.draw do
  resources :subjects
  resources :risyus do
    collection do
      get 'import_csv_new'
      post 'import_csv'
    end
  end
end
