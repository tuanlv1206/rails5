# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p = Project.create! name: "Yardwork"
p.tasks.create! name: "Mow the lawn", completed_at: Time.zone.now
p.tasks.create! name: "Paint the fence"
p.tasks.create! name: "Rake the leaves"

p = Project.create! name: "Housework"
p.tasks.create! name: "Pick up bedroom"
p.tasks.create! name: "Mop kitchen"
