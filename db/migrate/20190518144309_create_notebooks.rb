class CreateNotebooks < ActiveRecord::Migration[5.2]
  def change
    create_table :notebooks do |t|
      t.string :marca
      t.decimal :valor

      t.timestamps
    end
  end
end
