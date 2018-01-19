Rails.application.routes.draw do

  # get 'questions', to: 'questions#index'
  # get 'questions/new'
  # post 'questions/create', to: "questions#create"
  resources:questions, except: [:edit, :update, :destroy] do
    resources:answers, except: [:edit, :update, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
