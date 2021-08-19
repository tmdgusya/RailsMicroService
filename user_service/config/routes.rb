Rails.application.routes.draw do

  post '/api/login' => 'user#login'
  post '/api/join' => 'user#join'

end
