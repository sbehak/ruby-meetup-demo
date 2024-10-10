class AddMainColorToAgency < ActiveRecord::Migration[7.0]
  def change
    add_column :agencies, :main_color, :string
    add_column :agencies, :secondary_color, :string
  end
end
