class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :firstname
      t.string :lastname
      t.integer :age
      t.integer :location
      t.string :nationalid
      t.string :gender

      t.timestamps
    end
  end
end
