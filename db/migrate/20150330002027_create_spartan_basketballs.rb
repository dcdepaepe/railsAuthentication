class CreateSpartanBasketballs < ActiveRecord::Migration
  def change
    create_table :spartan_basketballs do |t|
      t.string :player_name
      t.integer :player_number
      t.boolean :has_graduated

      t.timestamps null: false
    end
  end
end
