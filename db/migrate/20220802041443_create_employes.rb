class CreateEmployes < ActiveRecord::Migration[7.0]
  def change
    create_table :employes do |t|
      t.string :e_name
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
