class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :length
      t.integer :play_count
      
      t.timestamps #populates created_at and updated_at
    end
  end
end
