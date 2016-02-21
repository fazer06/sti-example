Rails.application.routes.draw do

	root 'animals#index'

	resources :tribes
	# With these resources we can show either all the animals 
	# or only the animals of a specific race.
	resources :animals
	
	resources :lions, 		controller: 'animals', type: 'Lion' 
	resources :meerkats, 	controller: 'animals', type: 'Meerkat' 
	resources :wild_boars, 	controller: 'animals', type: 'WildBoar'

end
