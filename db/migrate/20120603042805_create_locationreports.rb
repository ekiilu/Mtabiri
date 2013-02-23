class CreateLocationreports < ActiveRecord::Migration
  def change
    create_table :locationreports do |t|
      t.string :index

      t.timestamps
    end
  end
end
