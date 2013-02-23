class CreateRoadcrimes < ActiveRecord::Migration
  def change
    create_table :roadcrimes do |t|
      t.string :nationalid
      t.string :location

      t.timestamps
    end
  end
end
