class Semestre < ActiveRecord::Base
  has_many :curriculums
  has_many :formations, through: :curriculums
  # pas d'acces direct des modules à partir des semestres ?
  has_many :module_formations, through: :curriculums # inutile ?
end
