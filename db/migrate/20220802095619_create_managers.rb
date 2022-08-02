class CreateManagers < ActiveRecord::Migration[7.0]
  def change
    create_table :managers do |t|
      t.string :m_name
      t.references :department, null: false, foreign_key: true

      t.timestamps
    end
  end
end
