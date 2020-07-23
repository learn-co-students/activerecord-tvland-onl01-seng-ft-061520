class AddActorToCharacters < ActiveRecord::Migration[5.1]
  def change
    add_column :characters, :actors_list, :integer
  end
end