# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Submission.create(uId:5,pId:2,answer:"neko",state:"AC")
Submission.create(uId:2,pId:1,answer:"apple",state:"NG")
Submission.create(uId:1,pId:3,answer:"sinu",state:"AC")
Problem.create(title:"問題1",statement:"neko",answer:"neko",contest_id:1)
Problem.create(title:"問題2",statement:"inu",answer:"inu",contest_id:1)
Problem.create(title:"問題3",statement:"kasu",answer:"kasu",contest_id:1)
Problem.create(title:"問題1",statement:"unn",answer:"unn",contest_id:2)
Contest.create(title:"1st contest")
Contest.create(title:"2st contest")
Contest.create(title:"3rd contest")
Contest.create(title:"4nd contest")