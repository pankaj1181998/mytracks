class CreatePersonals < ActiveRecord::Migration[5.2]
  def change
    create_table :personals do |t|
      t.string :email
      t.string :from
      t.string :to
      t.integer :seats
      t.date :date

      t.timestamps
    end
  end
end
