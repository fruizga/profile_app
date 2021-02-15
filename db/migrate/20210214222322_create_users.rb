class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :firstname
      t.string :lastname
      t.string :bio
      t.string :linkedin
      t.string :twitter

      t.timestamps
    end
  end
end
