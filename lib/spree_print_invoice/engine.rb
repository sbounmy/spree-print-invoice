module PrintInvoice
  class Engine < Rails::Engine

    def self.activate

      Spree::Admin::OrdersController.class_eval do
        def print
          @hide_prices = params[:template] == "packaging_slip"
          render :template => "spree/admin/orders/#{params[:template] || "invoice"}.html.erb", :layout => 'pdfkit'
        end
      end

      Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.autoload_paths += %W(#{config.root}/lib)
    config.to_prepare &method(:activate).to_proc
  end
end

Mime::Type.register 'application/pdf', :pdf
