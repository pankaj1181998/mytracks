class CreateBuys < ActiveRecord::Migration[5.2]
  def change
    create_table :buys do |t|
      t.string :from
      t.string :to
      t.date :doj
      t.string :duration
      t.string :airlines
      t.integer :fare
      t.time :dept

      t.timestamps
    end
  end
end
