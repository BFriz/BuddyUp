# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Goal.delete_all
User.delete_all
Comment.delete_all


g1 = Goal.create(category: 'fitness', name: 'Get fit Quick', duration: 30, content: 'Goal is to decrease my body fat by 10% and increase the big three (Cleans, Bench, Deadlift) by 15%')
g2 = Goal.create(category: 'acedemic', name: '10 books 1 month', duration: 30, content: 'Looking to crush 10 of the most popular books Don Quixote (Don Quixote)
A Tale Of Two Cities  Charles Dickens
The Lord of the Rings
The Hobbit  J. R. R. Tolkien
Le Petit Prince (The Little Prince) Antoine de Saint-Exupéry  
Harry Potter and the Philosophers Stone  J. K. Rowling 
And Then There Were None  Agatha Christie
紅樓夢/红楼梦 (Dream of the Red Chamber)  Cao Xueqin
She: A History of Adventure')
g3 = Goal.create(category: 'language', name: 'Lets learn a langauge', duration: 60, content: 'Looking to learn as much Spanish as I can in 60 days before I embark on on a beautiful honey moon in Spain')
g4 = Goal.create(category: 'challenge', name: 'unplugged - no cell-phone for a month', duration:30, content: 'Doctors orders to put away my phone for a month to deal with my anxiety hoping to stay in contact a little and make it through this massive feat with someone.')
u1 = User.create(name: 'Ben', nick_name: 'Zirf', country: 'Canada')
u2 = User.create(name: 'laura', nick_name: 'bambi', country: 'Canada')

c1 = Comment.create(author: 'Frank the Tank', content: ' This is really nice to figure out the associations')
c2 = Comment.create(author: 'Hey Zues', content: 'Stupid idea made by stupid people.')

