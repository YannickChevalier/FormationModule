class ModuleFormation < ActiveRecord::Base
  has_one :curriculum
  has_one :semestre, through: :curriculum
  has_one :formation, through: :curriculum
end
