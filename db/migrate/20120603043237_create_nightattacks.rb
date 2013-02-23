class CreateNightattacks < ActiveRecord::Migration
  def change
    create_table :nightattacks do |t|

      t.timestamps
    end
  end
end
