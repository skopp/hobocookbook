Hobocookbook::Application.routes.draw do
  root :to => 'manual#home', :as => 'home'

  match 'search' => 'front#search', :as => 'site_search'
  match 'manual' => 'manual#index'
  match 'manual/home' => 'manual#home'
  match 'manual/:section' => 'manual#manual_section', :as => 'manual_section'
  match 'manual/:section/:subsection' => 'manual#manual_subsection'

  match 'tagdef/:plugin/:taglib/:tag' => 'api_tag_defs#tagdef', :as => 'tagdef'
  match 'tagdef/:plugin/:taglib/:tag/:for' => 'api_tag_defs#tagdef', :as => 'tagdef_for'

  match 'tutorials' => 'tutorials#index', :as => 'tutorials'
  match 'tutorials/screencast' => 'tutorials#screencast', :as => 'tutorial'
  match 'tutorials/:tutorial' => 'tutorials#show', :as => 'tutorial'

  match 'plugins' => "plugins#index", :as => 'plugins'
  match 'plugins/:plugin' => "plugins#show", :as => 'plugin'

  match 'github/*uri' => 'github#github', :format => false, :as => 'github'

  match 'blog/feed' => redirect('/blog.atom')
  match 'blog/feed/atom' => redirect('/blog.atom')
  match 'blog/feed/rss' => redirect('/blog.atom')
  match 'blog/comments/feed' => redirect('http://hobo-staging.disqus.com/latest.rss')
  match 'blog/comments/feed/atom' => redirect('http://hobo-staging.disqus.com/latest.rss')
  match 'blog/*slug' => 'blog#blog', :as => 'blog'
  match 'blog' => 'blog#index', :as => 'blogs'

  # old routes from hobocentral.net
  match 'about' => redirect('/manual/about')
  match 'gallery' => redirect('/manual/gallery')
  match 'books' => redirect('/manual/books')
  match 'community' => redirect('/manual/community')
  match 'forum' => redirect('/manual/community')
  match 'api_taglibs' => redirect('/api_plugins')

  #map.site_search  'search', :controller => 'front', :action => 'search'

#  map.homepage '', :controller => 'front', :action => 'index'

#  map.manual         'manual',          :controller => 'manual', :action => 'index'
#  map.manual_section 'manual/:section', :controller => 'manual', :action => 'manual_section'
#  map.manual_section 'manual/:section/:subsection', :controller => 'manual', :action => 'manual_subsection'

#  map.tutorials 'tutorials',           :controller => 'tutorials', :action => 'index'
#  map.tutorial  'tutorials/:tutorial', :controller => 'tutorials', :action => 'show'
#
#  map.plugins 'plugins',           :controller => 'plugins', :action => 'index'
#  map.plugin  'plugins/:plugin',   :controller => 'plugins', :action => 'show'

#  Hobo.add_routes(map)
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
