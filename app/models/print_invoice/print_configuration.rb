module PrintInvoice
  class PrintConfiguration < Spree::Preferences::Configuration
    preference :logo_path, :string #example : "images/store/logo.png"
    preference :buttons, :string, :default => "invoice,packaging_slip"
  end
end