# db/seeds.rb
Animal.destroy_all
Owner.destroy_all
Species.destroy_all

# Insertar especies
pokemon = Species.create(name: 'Pokemon')
digimon = Species.create(name: 'Digimon')

# Insertar dueños
owners = {
  'Sam Smith' => Owner.create(full_name: 'Sam Smith', age: 34),
  'Jennifer Orwell' => Owner.create(full_name: 'Jennifer Orwell', age: 19),
  'Bob' => Owner.create(full_name: 'Bob', age: 45),
  'Melody Pond' => Owner.create(full_name: 'Melody Pond', age: 77),
  'Dean Winchester' => Owner.create(full_name: 'Dean Winchester', age: 14),
  'Jodie Whittaker' => Owner.create(full_name: 'Jodie Whittaker', age: 38)
}

# Insertar animales
animals_data = [
  { name: 'Agumon', date_of_birth: Date.new(2020, 2, 3), weight_kg: 10.23, neutered: true, escape_attempts: 0, owner: owners['Sam Smith'] },
  { name: 'Gabumon', date_of_birth: Date.new(2018, 11, 15), weight_kg: 8, neutered: true, escape_attempts: 2, owner: owners['Jennifer Orwell'] },
  { name: 'Pikachu', date_of_birth: Date.new(2021, 1, 7), weight_kg: 15.04, neutered: false, escape_attempts: 1, owner: owners['Jennifer Orwell'] },
  { name: 'Devimon', date_of_birth: Date.new(2017, 5, 12), weight_kg: 11, neutered: true, escape_attempts: 5, owner: owners['Bob'] },
  { name: 'Charmander', date_of_birth: Date.new(2020, 2, 8), weight_kg: 11, neutered: false, escape_attempts: 0, owner: owners['Melody Pond'] },
  { name: 'Plantmon', date_of_birth: Date.new(2021, 11, 15), weight_kg: 5.7, neutered: true, escape_attempts: 2, owner: owners['Bob'] },
  { name: 'Squirtle', date_of_birth: Date.new(1993, 4, 2), weight_kg: 12.13, neutered: false, escape_attempts: 3, owner: owners['Melody Pond'] },
  { name: 'Angemon', date_of_birth: Date.new(2005, 6, 12), weight_kg: 45, neutered: true, escape_attempts: 1, owner: owners['Dean Winchester'] },
  { name: 'Boarmon', date_of_birth: Date.new(2005, 6, 7), weight_kg: 20.4, neutered: true, escape_attempts: 7, owner: owners['Dean Winchester'] },
  { name: 'Blossom', date_of_birth: Date.new(1998, 10, 13), weight_kg: 17, neutered: true, escape_attempts: 3, owner: owners['Melody Pond'] },
  { name: 'Ditto', date_of_birth: Date.new(2022, 5, 14), weight_kg: 22, neutered: true, escape_attempts: 4 }
]

animals_data.each do |animal_data|
  species = animal_data[:name].end_with?('mon') ? digimon : pokemon
  Animal.create(animal_data.merge(species: species))
end

puts 'Cargada la base de datos'