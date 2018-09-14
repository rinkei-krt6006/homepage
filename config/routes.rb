Rails.application.routes.draw do
  get 'blog/top'
  get 'blog/page/:id' , to: 'blog#page'
  get 'index/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
