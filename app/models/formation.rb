class Formation < ActiveRecord::Base
  has_many :curriculums
  has_many :semestres, through: :curriculums
  has_many :module_formations, through: :curriculums
end
