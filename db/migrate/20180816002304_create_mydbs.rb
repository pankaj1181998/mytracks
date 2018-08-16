class CreateMydbs < ActiveRecord::Migration[5.2]
  def change
    create_table :mydbs do |t|
      t.string :email
      t.string :title
      t.string :vid_link
      t.string :image

      t.timestamps
    end
  end
end
