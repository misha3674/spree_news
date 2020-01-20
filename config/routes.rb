Spree::Core::Engine.add_routes do
  namespace :admin, path: Spree.admin_path do
    resources :articles
  end

  namespace :api, defaults: { format: 'json' } do
    namespace :v2 do
      namespace :storefront do
        resources :articles, only: %i[index show]
      end
    end
  end
end
