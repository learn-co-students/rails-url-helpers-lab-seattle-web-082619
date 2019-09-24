Rails.application.routes.draw do
  resources :students 

  # get '/students/:id/activate', to:'students@activate' , as: 'activate_student'
  # http://guides.rubyonrails.org/routing.html   
end
