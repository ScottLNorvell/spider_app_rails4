
Spider.delete_all
Fly.delete_all
Web.delete_all

10.times do
	spider = Spider.create name: Faker::Name.first_name, legs: 8, color: 'black and harry' 
	spider.webs.create size: "#{rand(1..10)} inches", name: Faker::Name.first_name
end

10.times { Fly.create name: Faker::Name.first_name, trapped: [false, true].sample }