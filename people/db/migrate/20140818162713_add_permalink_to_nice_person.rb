class AddPermalinkToNicePerson < ActiveRecord::Migration
  def change
    add_column :nice_people, :permalink, :string
  end
end
