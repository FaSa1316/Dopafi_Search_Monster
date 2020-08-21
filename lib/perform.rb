#!/usr/bin/env ruby
require 'bundler'
Bundler.require

class Application
  def initialize
	# Emplacement des fichiers sauvegardés
	@monstre_larve = "./db/monstre_larve.json"
	@monstre_caverne = "./db/monstre_caverne.json"
	@monstre_plaine_herbeuse = "./db/monstre_plaine_herbeuse.json"
	# Url de chacun des montres
	@url_monstre_larve = "https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Larves"
	@url_monstre_caverne = "https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Monstres des cavernes"
	@url_monstre_plaine_herbeuse = "https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Monstres des Plaines herbeuses"
  end
  def input_choice
  	puts "\t\tYoupi! Nous allons faire la chasse aux monstres dans le jeu de Dofapi"
  	puts "Nous avons capturer trois types de monstres :'Larves','Monstres des cavernes' et 'Monstres des Plaines herbeuses'"
  	puts "Veuillez choisir dans l'ordre(1 à 3) lequels de ces monstres vous voulez récupérer des informations, sinon tapez 4 pour télécharger toutes"
  	input_choice = gets.chomp.to_i
  end
  def perform
  	i = 1
  	entry = input_choice
  	dofapi = SearchMonster.new
  	while i < 2 do 
  		case entry
  			when 1
  				puts "\t\tMonstres Larves"
	  			result1 = dofapi.save_file_json(dofapi.client(@url_monstre_larve), @monstre_larve)
	  			i += 1
  			when 2
  				puts "\t\tMonstres cavernes"
	  			result2 = dofapi.save_file_json(dofapi.client(@url_monstre_caverne), @monstre_caverne)
	  			i += 1
  			when 3
  				puts "\t\tMonstres monstre_plaine_herbeuse"
	  			result3 = dofapi.save_file_json(dofapi.client(@url_monstre_plaine_herbeuse), @monstre_plaine_herbeuse)
	  			i += 1
  			when 4
  				puts "\t\tMonstres Larves"
  				result1 = dofapi.save_file_json(dofapi.client(@url_monstre_larve), @monstre_larve)
  				puts "\t\tMonstres cavernes"
  				result2 = dofapi.save_file_json(dofapi.client(@url_monstre_caverne), @monstre_caverne)
  				puts "\t\tMonstres monstre_plaine_herbeuse"
  				result3 = dofapi.save_file_json(dofapi.client(@url_monstre_plaine_herbeuse), @monstre_plaine_herbeuse)
  				i += 1
  			else
  				puts "ERROR!!! Commande inconnu, veuillez resaisir"
  				perform
  			end
  	end
  end
end