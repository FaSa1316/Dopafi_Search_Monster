# !/usr/bin/env ruby
require 'bundler'
Bundler.require


class SearchMonster
# Récupère les information
  def client(url)
  	response = HTTParty.get(url, format: :plain)
	return JSON.parse(response, symbolize_names: true)
  end

# Sauvegarde fichier json
  def save_file_json(response, path_file)
 	# ouvrir le fichier json // 
    File.open(path_file, "w") do |file|
      # sauvegaede dans le la variable contenant notre fichier json
      file << JSON.generate(response)      
    end
    puts "Les informations sont bien sauvegardées au format JSON :)"
    puts 'Vous pouvez le vérifier dans le répertoire db'
  end

end

