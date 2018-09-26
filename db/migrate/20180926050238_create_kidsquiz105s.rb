class CreateKidsquiz105s < ActiveRecord::Migration[5.2]
  def change
    create_table :kidsquiz105s do |t|
      t.string :category

      t.timestamps
    end
  end
end
