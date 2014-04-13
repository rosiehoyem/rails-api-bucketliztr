require 'api_constraints'

RailsApiBucketliztr::Application.routes.draw do
  scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
    resources :users, except: [:new, :edit] do
      resources :list_items, except: [:new, :edit]
    end
  end
  
end
