class CreateFirearms < ActiveRecord::Migration
  def change
    create_table :firearms do |t|
      t.string :location

      t.timestamps
    end
  end
end
