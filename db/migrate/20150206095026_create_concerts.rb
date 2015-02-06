class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :bandname
      t.string :venue
      t.string :city
      t.datetime :date
      t.decimal :price, scale: 2, unit: "&euro", delimiter: ",", separator: ".", precision: 10
      t.text :description
      t.timestamps null: false
    end
  end
end
