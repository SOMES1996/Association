class CreateJoinTableSchoolTeacher < ActiveRecord::Migration[7.0]
  def change
    create_join_table :schools, :teachers do |t|
      # t.index [:school_id, :teacher_id]
      # t.index [:teacher_id, :school_id]
    end
  end
end
