class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.date :date
      t.integer :home
      t.integer :away
      t.integer :total_overs
      t.integer :first_to_bat

      t.timestamps null: false
    end
  end
end
