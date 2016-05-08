Rails.application.routes.draw do
  
 
 #sends the infomration on the create ticket form to the 'create' function in the ticketsController page.
 post "tickets/new"=> "tickets#new"
 post "tickets/create"=> "tickets#create"
 post "tickets/show"=> "tickets#show"
 #resources :tickets

  #this is the first webpage that is displayed when application starts
  #index page of root page
  root 'pages#welcome'
  
  #routing for pages controller
  #redirects the pages according to link
  # Example:
  #          <%= link_to "Faq", pages_faq_path %>
  #         This line of code in welcome.html.erb creates a link that redirects the user to the faq function in the pages controller which displays the faq.html.erb file
  get 'pages/welcome'

  get 'pages/viewTicket'

  get 'pages/createTicket'

  get 'pages/faq'
  
  #routing for tickets controller
  get 'tickets/new'

  get 'tickets/create'

  get 'tickets/show'
  
  #BELOW IS all commented out.
  ####################################################################################
  ####################################################################################
  ####################################################################################

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
