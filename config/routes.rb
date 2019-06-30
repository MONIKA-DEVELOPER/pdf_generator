Rails.application.routes.draw do
  root 'candidates#new'
  get '/new', to: 'candidates#new'
  post '/new' , to: 'cadidates#create'
  get '/show', to: 'candidates#show'
  get '/edit/:id', to: 'candidates#edit', as: 'edit'
  patch '/edit/:id', to:'candidates#update'
  delete '/destroy/:id', to:'candidates#destroy' , as: 'destroy'
  get '/view/:id', to: 'candidates#create_pdf', as:'create_pdf'
  get '/pdf/:id', to: 'candidates#pdf', as: 'pdf'
  # get 'candidates/report' ,as: 'create_pdf'
  resources :candidates
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
