class CreateCattlethefts < ActiveRecord::Migration
  def change
    create_table :cattlethefts do |t|
      t.integer :numberstolen
      t.date :date_reported
      t.string :location

      t.timestamps
    end
  end
end
