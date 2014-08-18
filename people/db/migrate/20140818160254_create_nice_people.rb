class CreateNicePeople < ActiveRecord::Migration
  def change
    create_table :nice_people do |t|
      t.string :name
      t.string :city
      t.string :hair
      t.integer :age

      t.timestamps
    end
  end
end
