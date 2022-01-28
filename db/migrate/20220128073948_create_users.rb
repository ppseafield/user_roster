class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.boolean :admin
      t.boolean :active
      t.boolean :validated
      t.jsonb :user_data
      t.datetime :deactivated_at

      t.timestamps
    end
    add_index :users, :username, unique: true
    add_index :users, :email, unique: true
  end
end
