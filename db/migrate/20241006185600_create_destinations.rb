class CreateDestinations < ActiveRecord::Migration[7.0]
  def change
    create_table :destinations do |t|
      t.string :name
      t.references :agency, null: false, foreign_key: true

      t.timestamps
    end
  end
end
