Rails.application.routes.draw do
  get :javascript, to: 'javascript/index#page'
  root to: 'home/index#page'
end
