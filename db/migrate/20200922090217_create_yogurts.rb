class CreateYogurts < ActiveRecord::Migration[5.2]
  def change
    create_table :yogurts do |t|
      t.string :name
      t.string :group

      t.timestamps
    end
  end
end
