Rails.application.routes.draw do
  # get 'games/new'
  # get 'games/score'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get "ask", to: "questions#ask"
  get 'new', to: 'games#new'
  post 'score', to: 'games#score'

end
