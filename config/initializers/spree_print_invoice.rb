PrintInvoice::Config = PrintInvoice::PrintConfiguration.new

if Rails.env.development?
  ActionController::Base.asset_host = Proc.new { |source, request|
    if request.env["REQUEST_PATH"].include? ".pdf"
      "file://#{Rails.root.join('app')}"
    else
      "#{request.protocol}#{request.host_with_port}"
    end
  }
end