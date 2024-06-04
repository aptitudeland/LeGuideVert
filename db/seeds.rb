# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

# Clear existing data
# User.destroy_all
Garden.destroy_all
Package.destroy_all
Step.destroy_all
Task.destroy_all
GardenStep.destroy_all

# Create an admin user
# admin = User.create!(
#   id: 1,
#   email: 'admin@site',
#   password: '000000',
#   password_confirmation: '000000'
# )

# Create gardens for the admin user
garden1 = Garden.create!(
  name: "Jardin 1",
  size: "petit",
  exposition: "plein soleil",
  address: "123 Rue Principale, N'importeville, France",
  user_id: 1
)

garden2 = Garden.create!(
  name: "Jardin 2",
  size: "moyen",
  exposition: "mi-ombre",
  address: "456 Rue du Chêne, Quelquesville, France",
  user_id: 1
)

garden3 = Garden.create!(
  name: "Jardin 3",
  size: "grand",
  exposition: "ombre",
  address: "789 Rue des Pins, Votreville, France",
  user_id: 1
)

# Create packages with steps and tasks
package1 = Package.create!(
  name: "Forfait 1",
  category: "Légume",
  description: "Ce forfait contient des étapes pour cultiver des légumes."
)

step1_1 = Step.create!(
  order: 1,
  name: "Étape 1.1",
  description: "Description pour l'étape 1.1",
  package: package1
)

step1_2 = Step.create!(
  order: 2,
  name: "Étape 1.2",
  description: "Description pour l'étape 1.2",
  package: package1
)

step1_3 = Step.create!(
  order: 3,
  name: "Étape 1.3",
  description: "Description pour l'étape 1.3",
  package: package1
)

step1_4 = Step.create!(
  order: 4,
  name: "Étape 1.4",
  description: "Description pour l'étape 1.4",
  package: package1
)

Task.create!(
  order: 1,
  name: "Tâche 1.1.1",
  description: "Description pour la tâche 1.1.1",
  step: step1_1
)

Task.create!(
  order: 2,
  name: "Tâche 1.1.2",
  description: "Description pour la tâche 1.1.2",
  step: step1_1
)

Task.create!(
  order: 3,
  name: "Tâche 1.1.3",
  description: "Description pour la tâche 1.1.3",
  step: step1_1
)

Task.create!(
  order: 1,
  name: "Tâche 1.2.1",
  description: "Description pour la tâche 1.2.1",
  step: step1_2
)

Task.create!(
  order: 2,
  name: "Tâche 1.2.2",
  description: "Description pour la tâche 1.2.2",
  step: step1_2
)

Task.create!(
  order: 3,
  name: "Tâche 1.2.3",
  description: "Description pour la tâche 1.2.3",
  step: step1_2
)

Task.create!(
  order: 1,
  name: "Tâche 1.3.1",
  description: "Description pour la tâche 1.3.1",
  step: step1_3
)

Task.create!(
  order: 2,
  name: "Tâche 1.3.2",
  description: "Description pour la tâche 1.3.2",
  step: step1_3
)

Task.create!(
  order: 3,
  name: "Tâche 1.3.3",
  description: "Description pour la tâche 1.3.3",
  step: step1_3
)

Task.create!(
  order: 1,
  name: "Tâche 1.4.1",
  description: "Description pour la tâche 1.4.1",
  step: step1_4
)

Task.create!(
  order: 2,
  name: "Tâche 1.4.2",
  description: "Description pour la tâche 1.4.2",
  step: step1_4
)

Task.create!(
  order: 3,
  name: "Tâche 1.4.3",
  description: "Description pour la tâche 1.4.3",
  step: step1_4
)

package2 = Package.create!(
  name: "Forfait 2",
  category: "Fleur",
  description: "Ce forfait contient des étapes pour cultiver des fleurs."
)

step2_1 = Step.create!(
  order: 1,
  name: "Étape 2.1",
  description: "Description pour l'étape 2.1",
  package: package2
)

step2_2 = Step.create!(
  order: 2,
  name: "Étape 2.2",
  description: "Description pour l'étape 2.2",
  package: package2
)

step2_3 = Step.create!(
  order: 3,
  name: "Étape 2.3",
  description: "Description pour l'étape 2.3",
  package: package2
)

step2_4 = Step.create!(
  order: 4,
  name: "Étape 2.4",
  description: "Description pour l'étape 2.4",
  package: package2
)

Task.create!(
  order: 1,
  name: "Tâche 2.1.1",
  description: "Description pour la tâche 2.1.1",
  step: step2_1
)

Task.create!(
  order: 2,
  name: "Tâche 2.1.2",
  description: "Description pour la tâche 2.1.2",
  step: step2_1
)

Task.create!(
  order: 3,
  name: "Tâche 2.1.3",
  description: "Description pour la tâche 2.1.3",
  step: step2_1
)

Task.create!(
  order: 1,
  name: "Tâche 2.2.1",
  description: "Description pour la tâche 2.2.1",
  step: step2_2
)

Task.create!(
  order: 2,
  name: "Tâche 2.2.2",
  description: "Description pour la tâche 2.2.2",
  step: step2_2
)

Task.create!(
  order: 3,
  name: "Tâche 2.2.3",
  description: "Description pour la tâche 2.2.3",
  step: step2_2
)

Task.create!(
  order: 1,
  name: "Tâche 2.3.1",
  description: "Description pour la tâche 2.3.1",
  step: step2_3
)

Task.create!(
  order: 2,
  name: "Tâche 2.3.2",
  description: "Description pour la tâche 2.3.2",
  step: step2_3
)

Task.create!(
  order: 3,
  name: "Tâche 2.3.3",
  description: "Description pour la tâche 2.3.3",
  step: step2_3
)

Task.create!(
  order: 1,
  name: "Tâche 2.4.1",
  description: "Description pour la tâche 2.4.1",
  step: step2_4
)

Task.create!(
  order: 2,
  name: "Tâche 2.4.2",
  description: "Description pour la tâche 2.4.2",
  step: step2_4
)

Task.create!(
  order: 3,
  name: "Tâche 2.4.3",
  description: "Description pour la tâche 2.4.3",
  step: step2_4
)

# Create garden steps
GardenStep.create!(
  garden: garden1,
  step: step1_1,
  status: "non commencé"
)

GardenStep.create!(
  garden: garden1,
  step: step1_2,
  status: "en cours"
)

GardenStep.create!(
  garden: garden1,
  step: step1_3,
  status: "terminé"
)

GardenStep.create!(
  garden: garden2,
  step: step2_1,
  status: "non commencé"
)

GardenStep.create!(
  garden: garden2,
  step: step2_2,
  status: "en cours"
)

GardenStep.create!(
  garden: garden2,
  step: step2_3,
  status: "terminé"
)

GardenStep.create!(
  garden: garden3,
  step: step1_4,
  status: "non commencé"
)

GardenStep.create!(
  garden: garden3,
  step: step2_4,
  status: "en cours"
)

puts "Seeding terminé !"
