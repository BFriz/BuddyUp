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


g1 = Goal.create(category: 'Fitness', name: 'Get fit Quick', duration: 30, content: 'Goal is to decrease my body fat by 10% and increase the big three (Cleans, Bench, Deadlift) by 15%')
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
g1 = Goal.create(category: 'Fitness', name: 'Learn to do a Muscle-Up', duration: 30, content: 'I have always wanted to be able to do a muscle up but have always come up short. I am looking for someone to team up with and power through to accomplish this feat. Hopefully someone with previous workout experience.')
g1 = Goal.create(category: 'Computer Science', name: 'Learn to program', duration: 60, content: 'I want to learn how to program but not pay a wack of cash. The biggest problem that has been facing me is that I do not have anyone to talk my about certain issues as well as someone to help motivate. Looking for someone interested.')
g1 = Goal.create(category: 'Weird', name: 'Juggling', duration: 7, content: 'Hey I have a bet with roomate that I cannot learn how to juggle in 7 days - looking for someone with experience or just keen where we can through back and forth trails and tribulations.')
g1 = Goal.create(category: 'Skills', name: 'Knitting', duration: 120, content: 'After my Grandma passed away I wanted to do something that would keep her memory alive. She was always a massive knitter so that is what I am going to do. Feel free to join me and we can figure this old craft out together.')
g1 = Goal.create(category: 'Fitness', name: '3 peak Challenge!!!', duration: 26, content: 'I have a goal to accomplish the 3 peak challenge in 26 days. I need someone to help me stay on top of training for it and hopefully drinking less! I always do better when I can think of someone doing it!')
g1 = Goal.create(category: 'aclohol', name: 'Build my Own Brewery', duration: 150, content: 'I want a brewery in my house because. I am thinking this is something that will take a fair amount of trail and error and I would not mind halving my trails and errors with someone else. Cheers and Slainte.')
g1 = Goal.create(category: 'Challenge', name: 'Green Thumb', duration: 30, content: 'Heard if you do anything for 30 days it becomes a habit. So I want to spend a month being greener and would love to hear what another person things about it and any tips they pick up along the way.')




c1 = Comment.create(author: 'Frank the Tank', content: ' This is really nice to figure out the associations')
c2 = Comment.create(author: 'Hey Zues', content: 'Stupid idea made by stupid people.')

