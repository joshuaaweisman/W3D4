# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#USERS
user1 = User.create(username: "Aidan")
user2 = User.create(username: "Josh")
user3 = User.create(username: "Jaidanosh")

#POLLS
poll1 = Poll.create(title: "What Should We Poll You About?", author_id: user1.id)
poll2 = Poll.create(title: "Who Shot First?", author_id: user2.id)
poll3 = Poll.create(title: "If You Were A Superhero, What Would Your Power Be?", author_id: user2.id)

#QUESTIONS
question1 = Question.create(text: "Pick One Of These:", poll_id: poll3.id)
question2 = Question.create(text: "Pick One Of These Other Ones", poll_id: poll3.id)

#ANSWERCHOICE
choice1 = AnswerChoice.create(text: "Mind Reading", question_id: question1.id)
choice2 = AnswerChoice.create(text: "Portals", question_id: question1.id)

#RESPONSE
response1 = Response.create(answer_id: choice1.id, user_id: user2.id)
response2 = Response.create(answer_id: choice1.id, user_id: user3.id)





