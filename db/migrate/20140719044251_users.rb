class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :email

      t.timestamps  
    end
  end
end
