class CreateMessagePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :message_posts do |t|
      t.string :name
      t.string :gender
      t.string :game_id
      t.text :message
      t.string :purpose
      t.integer :bulletin_board_id

      t.timestamps
    end
  end
end
