class AddCodeToModuleFormation < ActiveRecord::Migration
  def change
    add_column :module_formations, :code, :string
  end
end
