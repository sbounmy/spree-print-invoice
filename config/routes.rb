Spree::Core::Engine.routes.draw do
  match "/admin/orders/:id/print", :to => 'admin/orders#print', :via => :get, :as => :admin_print_order

  #add invoice print button for clients /account
  match "/orders/:id/print", :to => 'admin/orders#print', :via => :get, :as => :client_print_order
end
