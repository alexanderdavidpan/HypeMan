class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :password_digest
      t.string :email
      t.string :photo_url
      
      t.timestamps
    end
  end
end
