class CreateModuleFormations < ActiveRecord::Migration
  def change
    create_table :module_formations do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
