Rails.application.routes.draw do
  resources :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/song/html' , to: 'songs#show_data' , as: :data_show
  get '/song/json' , to: 'songs#show_json' , as: :json_show

end
