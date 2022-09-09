Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  post '/graphql', to: 'graphql#execute'

  get '/messages', to: 'messages#generate'

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
  mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql' if Rails.env.development?
end
