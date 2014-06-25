# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ title: 'Chicago' }, { title: 'Copenhagen' }])
#   Mayor.create(title: 'Emanuel', city: cities.first)
Post.delete_all

Post.create!([
                    {id: 1, title: "Demo Post 1", body: "In body of demo post 1"},
                    {id: 2, title: "Demo Post 2", body: "In body of demo post 2"},
                    {id: 3, title: "Demo Post 3", body: "In body of demo post 3"},
                    {id: 4, title: "Demo Post 4", body: "In body of demo post 4"},
                    {id: 5, title: "Demo Post 5", body: "In body of demo post 5"}
                ])