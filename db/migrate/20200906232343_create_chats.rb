class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|
      t.string :name
      t.text :text
      t.text :image

      t.timestamps
    end
  end
end
