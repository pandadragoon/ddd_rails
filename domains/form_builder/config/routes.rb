FormBuilder::Engine.routes.draw do
  resources :forms, only: %i[index create new]
end
