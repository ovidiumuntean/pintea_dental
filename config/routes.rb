Rails.application.routes.draw do
  resources :reviews
  resources :appointment_treatments
  get 'patients/registration'


	controller :sessions do
		get 'login' => :new
		post 'login' => :create
		get 'logout' => :destroy
		delete 'logout' => :destroy
		get 'employeelogin' => :employeenew
		post 'employeelogin' => :employeecreate
		get 'employeelogout' => :employeedestroy
		delete 'employeelogout' => :employeedestroy
	end

  get 'pages/home'
  get 'search', :to => 'patients#search'
  get 'pages/about'

  resources :appointment_treatments do
    resources :reviews
  end
  
  get 'discount', :to => 'treatments#discount'
  get 'apply_discount', :to => 'treatments#apply_discount'
  

  resources :clinics
  resources :tooths
  resources :sides
  resources :genders
  resources :countries
  resources :regions
  resources :appointments
  resources :tooth_treatments
  resources :treatments
  resources :job_histories
  resources :employees
  resources :data_files
  resources :patients
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root :to => 'pages#home'

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
