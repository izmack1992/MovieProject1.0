class CreateMovieLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :movie_likes do |t|
      t.integer :movie
      t.boolean :like

      t.timestamps
    end
  end
end
