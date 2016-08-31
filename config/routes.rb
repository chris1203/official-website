Rails.application.routes.draw do
  devise_for :users

  resources :students

  get "/overview", to: "welcome#overview"
  get "/syallabus", to: "welcome#syallabus"
  get "/faq", to: "welcome#faq"
  get "/projects", to: "students#projects"
  get "/apply", to: "welcome#apply"
  get "/apply/success", to: "steps#success"

  namespace :admin do
    resources :faqs
    resources :categories
    resources :users
  end
  root to: "welcome#index"
end
