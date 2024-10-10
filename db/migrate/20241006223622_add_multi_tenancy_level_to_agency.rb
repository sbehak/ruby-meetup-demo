class AddMultiTenancyLevelToAgency < ActiveRecord::Migration[7.0]
  def change
    add_column :agencies, :multi_tenancy_level, :integer
    add_column :agencies, :parent_agency_id, :integer
  end
end
