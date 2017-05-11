class CreateActors < ActiveRecord::Migration[5.1]
  def change
    create_table :actors do |t|
      t.string :name
      t.string :second_name
      t.string :third_name
      t.timestamps
    end
  end
end
