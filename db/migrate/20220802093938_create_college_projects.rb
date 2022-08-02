class CreateCollegeProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :college_projects do |t|
      t.references :college, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
