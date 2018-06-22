class CreateImageposts < ActiveRecord::Migration[5.1]
  def change
    create_table :imageposts do |t|
      t.string :picture
      t.integer :user_id

      t.timestamps
    end
  end
end
