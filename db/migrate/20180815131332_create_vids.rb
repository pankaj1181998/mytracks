class CreateVids < ActiveRecord::Migration[5.2]
  def change
    create_table :vids do |t|
      t.string :title
      t.string :vid_link
      t.string :image

      t.timestamps
    end
  end
end
