# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(email: 'test2@email.com', username: 'TestUserOne!')
user1.save
list_items1 = user1.list_items.create([{content: 'Learn to Code'}, {content: 'Build a house'}])

user2 = User.create(email: 'test1@email.com', username: 'TestUserTwo!')
user2.save
list_item2 = user2.list_items.create([{content: 'Travel the world'}, {content: 'Learn to code'}])

