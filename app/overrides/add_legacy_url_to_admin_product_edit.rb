
poop = "<%= f.field_container :legacy_url do %><label for='product_legacy_url'>Legacy URL Slug</label><br /><%= f.text_field :legacy_url, :class => 'fullwidth title' %><%= f.error_message_on :legacy_url %><% end %>"



Deface::Override.new(:virtual_path => 'spree/admin/products/_form',
                     :name => 'add_legacy_url_to_admin_product_edit',
                     :text => poop,
                     :insert_before => "code[erb-loud]:contains('f.field_container :description do')")
                     
                     
                     


