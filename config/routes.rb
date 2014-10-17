Referrari::Engine.routes.draw do

  resources :referrals, :only => [:index]

end
