class DropTemplate < ActiveRecord::Migration[5.2]
  def change
  	drop_table :templates
  end
end
