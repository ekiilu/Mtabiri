class CreateConflicts < ActiveRecord::Migration
  def change
    create_table :conflicts do |t|

      t.timestamps
    end
  end
end
