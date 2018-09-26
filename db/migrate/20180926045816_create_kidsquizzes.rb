class CreateKidsquizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :kidsquizzes do |t|
      t.string :user
      t.string :question

      t.timestamps
    end
  end
end
