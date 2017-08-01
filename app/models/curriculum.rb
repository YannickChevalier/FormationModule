class Curriculum < ActiveRecord::Base
  belongs_to :formation
  belongs_to :module_formation
  belongs_to :semestre
end
