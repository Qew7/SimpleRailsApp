class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :duration
      t.string :actor
      t.string :rating
      t.text :description

      t.timestamps
    end
  end
end
