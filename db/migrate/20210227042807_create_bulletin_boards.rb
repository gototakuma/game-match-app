class CreateBulletinBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :bulletin_boards do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
