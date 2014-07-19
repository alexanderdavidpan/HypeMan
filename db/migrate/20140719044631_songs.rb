class Songs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.belongs_to :artist
      t.string :title
      t.string :mp3_url
      t.string :photo_url

      t.timestamps
    end
  end
end
