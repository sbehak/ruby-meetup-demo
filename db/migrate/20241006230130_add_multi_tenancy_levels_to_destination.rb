class AddMultiTenancyLevelsToDestination < ActiveRecord::Migration[7.0]
  def change
    add_column :destinations, :tenant_1, :integer
    add_column :destinations, :tenant_2, :integer
    add_column :destinations, :tenant_3, :integer
    add_column :destinations, :tenant_4, :integer
    add_column :destinations, :tenant_5, :integer
  end
end
