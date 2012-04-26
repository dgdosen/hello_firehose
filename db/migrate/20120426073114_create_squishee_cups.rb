class CreateSquisheeCups < ActiveRecord::Migration
  def change
    create_table :squishee_cups do |t|
      t.string :name
      t.string :color

      t.timestamps
    end
  end
end
