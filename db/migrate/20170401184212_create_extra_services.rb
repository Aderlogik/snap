class CreateExtraServices < ActiveRecord::Migration[5.0]
  def change
    create_table :extra_services do |t|
      t.string :name
      t.string :price

      t.timestamps
    end
  end
end
