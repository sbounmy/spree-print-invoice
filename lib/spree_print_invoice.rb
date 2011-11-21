require 'print_invoice_hooks'
require 'pdfkit'

module PrintInvoice
  class Engine < Rails::Engine
    
    def self.activate

      Admin::OrdersController.class_eval do
        def print
          @hide_prices = params[:template] == "packaging_slip"
          render :template => "admin/orders/#{params[:template] || "invoice"}.html.erb", :layout => 'pdfkit'
        end
      end

    end

    config.autoload_paths += %W(#{config.root}/lib)
    config.to_prepare &method(:activate).to_proc
  end
end

Mime::Type.register 'application/pdf', :pdf
