# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.destroy_all
Reviewer.destroy_all

Reviewer.create! [
    { name: "Aastik", password: "123123"},
    { name: "Joe", password: "abc123"}
]

Book.create! [
    { name: "Eloquent Ruby", author: "Russ Olsen", reviewer_id: Reviewer.first.id},
    { name: "Beginning Ruby", author: "Peter Cooper", reviewer_id: Reviewer.last.id},
    { name: "Metaprogramming Ruby", author: "Paolo Perrotta", reviewer_id: Reviewer.first.id},
    { name: "Design patterns in Ruby", author: "Russ Olsen", reviewer_id: Reviewer.last.id},
    { name: "The Ruby Programming Lang", author: "David Flanagan", reviewer_id: Reviewer.first.id}
]

100.times { |index| Book.create! name: "Book#{index}", author: "Author#{index}", reviewer_id: Reviewer.first.id }

eloq = Book.find_by name: "Eloquent Ruby"
eloq.notes.create! [
    { title: "Wow", note: "Great book"},
    { title: "fun", note: "Doesnt put you to sleep"}
]