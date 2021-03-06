Rails.application.routes.draw do
	devise_for :users, controllers: {
		sessions: 'users/sessions',
		registrations: 'users/registrations',
		confirmations: 'users/confirmations',
		passwords: 'users/passwords',
		unlocks: 'users/unlocks'
	}
	root 'home#index'
	get 'admin' => 'admin#index'
end
