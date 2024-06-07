class CreateUsers < ActiveRecord::Migration[7.1]
  def up
    create_table :users do |t|
      t.string  :user_name
      t.string  :user_email
      t.string  :password
      t.integer :role
      t.date    :created_at
      t.date    :updated_at
      t.date    :deleted_at
    end
  end

  def down
    drop_table :users
  end
end
