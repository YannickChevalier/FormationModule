require 'csv'
namespace :setup do
  desc "creation des formations"
  task formations: :environment do
    Dir["db/sources/formations/*"].each do |f|
      file_name=File.basename(f,".csv")
      file_name_decomposed=file_name.split('_')
      year=Year.where(name: file_name_decomposed.pop()).first_or_create
      formation=Formation.where(name: file_name_decomposed.join(" ")).first_or_create
      CSV.foreach(f) do |line|
        semestre=Semestre.where(name: line[0]).first_or_create
        mod=ModuleFormation.where(name: line[1] , code: line[2]).first_or_create
        Curriculum.where(formation: formation,module_formation: mod, semestre: semestre, year_id: year.id).first_or_create
      end
    end
  end

  desc "creation des semestres"
  task semestres: :environment do
    (1..6).each do |n|
      Semestre.find_or_create_by_name("S#{n}")
    end
  end



end
