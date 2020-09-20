class CreateSpendings < ActiveRecord::Migration[5.2]
  def change
    create_table :spendings do |t|
      t.integer :month
      t.integer :payment

      t.timestamps
    end
  end
end
