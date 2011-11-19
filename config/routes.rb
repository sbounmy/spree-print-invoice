Rails.application.routes.draw do
  match "/admin/orders/:id/print", :to => 'admin/orders#print', :via => :get, :as => :print_order
end
