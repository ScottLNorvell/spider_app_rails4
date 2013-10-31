class CreateSpiders < ActiveRecord::Migration
  def change
    create_table :spiders do |t|
      t.integer :legs
      t.string :color
      t.string :name

      t.timestamps
    end
  end
end
