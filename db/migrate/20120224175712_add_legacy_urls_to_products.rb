class AddLegacyUrlsToProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :legacy_url, :string
    
  end
end
