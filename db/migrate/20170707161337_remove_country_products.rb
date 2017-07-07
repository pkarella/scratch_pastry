class RemoveCountryProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :country, :string
  end
end
