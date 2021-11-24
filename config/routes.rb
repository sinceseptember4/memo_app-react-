Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  Rails.application.routes.draw do
    root to: 'memos#index'
    get 'memos', to: 'memos#index'
    namespace 'api' do
      namespace 'v1' do
        resources :memos
      end
    end
  end
end
