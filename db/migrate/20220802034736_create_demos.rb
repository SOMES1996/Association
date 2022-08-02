class CreateDemos < ActiveRecord::Migration[7.0]
  def change
    create_table :demos do |t|
      t.string :d_name
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
