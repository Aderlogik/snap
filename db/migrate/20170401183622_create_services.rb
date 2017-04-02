class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :address
      t.integer :plan_id
      t.integer :payment_id
      t.integer :subscription_id
      t.integer :schedule_id
      t.integer :extra_service_id
      t.integer :user_id

      t.timestamps
    end
  end
end
