class CreateLinhkiens < ActiveRecord::Migration
  def change
    create_table :linhkiens do |t|
      t.string :ten
      t.string :loai
      t.integer :price
      t.integer :tondau
      t.integer :nhap
      t.integer :xuat
      t.integer :toncuoi

      t.timestamps null: false
    end
  end
end
