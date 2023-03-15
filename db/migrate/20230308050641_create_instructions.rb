class CreateInstructions < ActiveRecord::Migration[7.0]
  def change
    create_table :instructions do |t|
      t.integer :prep_time
      t.integer :cook_time
      t.string :ingredient
      t.text :description

      t.timestamps
    end
  end
end
