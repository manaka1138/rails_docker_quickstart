Rails.application.routes.draw do
  get 'uploader/index'
  get 'uploader/form'
  post 'uploader/upload'
  get 'uploader/download'
  get 'pictures/index'
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles do
    resources :comments
  end
 resources :pictures do
   resources :picture_comments
end
end
