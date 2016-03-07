# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Do NOT forget to avoid doublons when recreating entries (here with 'delete_all' method)
# User.delete_all
# User.create!(email: 'admin@admin.com', password:"password", password_confirmation:"password")


liste = [
  {username: "Guillaume", email: "Guillaume@username.com", phone: "0102030405", gender: "0",address: "mon adresse", citycode: "", city: "Lille", user_id: 1},
  {username: "Sophie", email: "sophie@username.com", phone: "0102030405", gender: "1",address: "mon adresse", citycode: "", city: "Lille", user_id: 4},
  {username: "Jade", email: "jade@username.com", phone: "0102030405", gender: "1",address: "mon adresse", citycode: "", city: "Lille", user_id: 1},
  {username: "Philippe", email: "philippe@username.com", phone: "0102030405", gender: "0",address: "mon adresse", citycode: "", city: "Lille", user_id: 1},
  {username: "Anas", email: "anas@username.com", phone: "0102030405", gender: "0",address: "mon adresse", citycode: "", city: "Lille", user_id: 1},
  {username: "Najib", email: "najib@username.com", phone: "0102030405", gender: "0",address: "mon adresse", citycode: "", city: "Lille", user_id: 2},
  {username: "Marc", email: "marc@username.com", phone: "0102030405", gender: "0",address: "mon adresse", citycode: "", city: "Lille", user_id: 1},
  {username: "Antoine", email: "antoine@username.com", phone: "0102030405", gender: "0",address: "mon adresse", citycode: "", city: "Lille", user_id: 4},
  {username: "Thierry", email: "preusername@username.com", phone: "0102030405", gender: "0",address: "mon adresse", citycode: "", city: "Lille", user_id: 4},
  {username: "Anthony", email: "preusername@username.com", phone: "0102030405", gender: "0",address: "mon adresse", citycode: "", city: "Lille", user_id: 1},
  {username: "Thomas", email: "preusername@username.com", phone: "0102030405", gender: "0",address: "mon adresse", citycode: "", city: "Lille", user_id: 4},
  {username: "Vincent", email: "preusername@username.com", phone: "0102030405", gender: "0",address: "mon adresse", citycode: "", city: "Lille", user_id: 1},
  {username: "Alexis", email: "preusername@username.com", phone: "0102030405", gender: "0",address: "mon adresse", citycode: "", city: "Lille", user_id: 2},
  {username: "Julie", email: "preusername@username.com", phone: "0102030405", gender: "1",address: "mon adresse", citycode: "", city: "Lille", user_id: 1},
  {username: "Sabrina", email: "preusername@username.com", phone: "0102030405", gender: "1",address: "mon adresse", citycode: "", city: "Lille", user_id: 4},
  {username: "Bertrand", email: "preusername@username.com", phone: "0102030405", gender: "0",address: "mon adresse", citycode: "", city: "Lille", user_id: 1},
  {username: "Naïma", email: "preusername@username.com", phone: "0102030405", gender: "1",address: "mon adresse", citycode: "", city: "Lille", user_id: 1},
  {username: "François", email: "preusername@username.com", phone: "0102030405", gender: "0",address: "mon adresse", citycode: "", city: "Lille", user_id: 2},
  {username: "Othman", email: "preusername@username.com", phone: "0102030405", gender: "0",address: "mon adresse", citycode: "", city: "Lille", user_id: 1},
  {username: "Caroline", email: "preusername@username.com", phone: "0102030405", gender: "1",address: "mon adresse", citycode: "", city: "Lille", user_id: 1},
  {username: "Didier", email: "didier.c62@numericable.fr", phone: "0102030405", gender: "0",address: "mon adresse", citycode: "", city: "Lille", user_id: 4},
  {username: "Thanh", email: "preusername@username.com", phone: "0102030405", gender: "0",address: "mon adresse", citycode: "", city: "Lille", user_id: 2},
  {username: "Manoël", email: "manoel@username.com", phone: "0102030405", gender: "0",address: "mon adresse", citycode: "", city: "Lille", user_id: 1}
 ]

Like.delete_all
List.delete_all
liste.each do |x|
  List.create(x)
end
