Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  root "quizzes#index"

  resources :quizzes, except: [:show]
  resources :user_quiz_sessions
  get 'quizzes/:permalink', to: 'quizzes#show'
end
