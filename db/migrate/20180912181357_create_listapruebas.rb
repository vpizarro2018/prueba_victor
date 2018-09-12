class CreateListapruebas < ActiveRecord::Migration[5.2]
  def change
    create_table :listapruebas do |t|
      t.string :nombre
      t.date :desde
      t.date :hasta
      t.string :responsable
      t.boolean :estado

      t.timestamps
    end
  end
end
