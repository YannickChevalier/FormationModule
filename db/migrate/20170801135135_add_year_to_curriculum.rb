class AddYearToCurriculum < ActiveRecord::Migration
  def change
    add_reference :curriculums, :year, index: true, foreign_key: true
  end
end
