Rails.application.routes.draw do
	root 'equation#index'

	post '/' => 'equation#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
