require 'api_constraints'

BlenderCG::Application.routes.draw do
  # Root page

  # Rails admin
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  # Api setup
  namespace :api, defaults: {format: :json}, constraints: {subdomain: 'api'}, path: '/' do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: false) do
      
    end
  end

  # Devise gem  
end
