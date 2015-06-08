# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



g1 = Goal.create(category: 'fitness', name: 'Get fit Quick', duration: 30)
u1 = User.create(name: 'Ben', nick_name: 'Zirf', country: 'Canada')
c1 = Comment.create(author: 'Frank the Tank', content: ' This is really nice to figure out the associations')
