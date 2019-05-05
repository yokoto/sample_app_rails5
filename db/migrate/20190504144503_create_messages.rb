class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.text :content
      t.integer :sender_id
      t.integer :recipient
      t.string :room_id

      t.timestamps
    end
    add_index :messages, [:room_id, :created_at]
  end
end
