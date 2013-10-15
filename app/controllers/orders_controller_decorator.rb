  Spree::OrdersController.class_eval do
    def print
      render :template => "spree/admin/orders/invoice.html.erb", :layout => 'pdfkit'      
    end
  end