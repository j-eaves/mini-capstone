Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'products#index'
  #get '/index' => 'products#index'
  get '/products' => 'products#index'
  #get '/new' => 'products#new'
  #new = render/show a form
  get 'products/new' => 'products#new' 
  post '/products' => 'products#create'
  #shows info about a particular item number
  get 'products/:id'=> 'products#show'
  #make your edit route
  get '/products/:id/edit' => 'products#edit'
  #this is the update page
  patch '/products/:id' => 'products#update'
  delete '/products/:id' => 'products#destroy'
  #get '/test_page'=>'products#products_page'
  #I still need to make the product names into links via <a href="whatever"></a>
end
