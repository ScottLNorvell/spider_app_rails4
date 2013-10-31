class CreateFlies < ActiveRecord::Migration
  def change
    create_table :flies do |t|
      t.string :name
      t.boolean :trapped

      t.timestamps
    end
  end
end
