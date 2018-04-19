class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :pickup_address
      t.string :dropoff_address
      t.text :instructions
      t.datetime :due_date
      t.decimal :cost
      t.string :status
      t.references :user
      t.references :customer

      t.timestamps
    end
  end
end
