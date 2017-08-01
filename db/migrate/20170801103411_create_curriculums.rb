class CreateCurriculums < ActiveRecord::Migration
  def change
    create_table :curriculums do |t|
      t.references :formation, index: true, foreign_key: true
      t.references :module_formation, index: true, foreign_key: true
      t.references :semestre, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
