Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #resources gets all default routes
  resources :students
  #can add custom route like `activate`
  #get "students/:id/activate", to: "students#activate"

end
