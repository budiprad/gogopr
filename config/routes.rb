Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace  :v1 do
      namespace :pr_creation, :path => "pr-creation" do
        resources :request
        resources :item
      end

      namespace :master_data, :path => "master-data" do
        resources :country
        resources :entity
        resources :business_unit
        resources :cost_center
        resources :product
        resources :chart_of_account
      end

    end
  end
end
