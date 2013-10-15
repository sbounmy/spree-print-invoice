Deface::Override.new(:virtual_path => "spree/admin/orders/show",
                     :name => "admin_order_show_print_buttons",
                     :insert_after => 'code[erb-silent]:contains("content_for :page_actions do")',
                     :partial => "spree/admin/orders/print_buttons",
                     :disabled => false)

Deface::Override.new(:virtual_path => "spree/admin/orders/edit",
                     :name => "admin_order_edit_print_buttons",
                     :insert_after => 'code[erb-silent]:contains("content_for :page_actions do")',
                     :partial => "spree/admin/orders/print_buttons",
                     :disabled => false)

Deface::Override.new(:virtual_path => "spree/orders/show",
                     :name => "order_show_print_buttons",
                     :insert_bottom => 'legend',
                     :partial => "spree/orders/print_buttons",
                     :disabled => false)