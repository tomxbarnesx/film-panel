# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.create(name: "Animation and Effects", total_hours: "220");
Course.create(name: "Empathic Directing", total_hours: "300");

Cohort.create(name: "Animation - Summer 2018", start_date: "20180601", end_date: "20180831", course_id: 1);
Cohort.create(name: "Directing - Summer 2018", start_date: "20180601", end_date: "20180830", course_id: 2);
Cohort.create(name: "Animation - Winter 2018", start_date: "20181101", end_date: "20181231", course_id: 1);
Cohort.create(name: "Directing - Winter 2018", start_date: "20181101", end_date: "20181231", course_id: 2);

Admin.create(salary: 100000, edu: "PhD")
Profile.create(first_name: "Tom", last_name: "Barnes", email: "hotchiligumption@gmail.com", birthdate: "19900313", photo_url: "https://www.shareicon.net/data/256x256/2016/09/01/822747_user_512x512.png", profileable_type: "Admin", profileable_id: 1, password: "1234");

i = 1
while i < 21 do
    randoco = rand(1..4)
    Student.create(background: Faker::Job.field)
    Profile.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, birthdate: Faker::Date.birthday(18, 65), photo_url: "https://www.shareicon.net/data/256x256/2016/09/01/822751_user_512x512.png", profileable_type: "Student", profileable_id: i, password: Faker::Internet.password(4, 6));
    Enrollment.create(profile_id: i, cohort_id: randoco, grade: 100)
    i += 1
end

k = 1
while k < 5 do
    rando = rand(50000..65000)
    randoco2 = rand(1..4)
    Instructor.create(salary: rando, edu: "Masters")
    Profile.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, birthdate: Faker::Date.birthday(22, 65), photo_url: "https://www.shareicon.net/data/256x256/2016/09/01/822761_user_512x512.png", profileable_type: "Instructor", profileable_id: k, password: Faker::Internet.password(4, 6));
    Enrollment.create(profile_id: k, cohort_id: randoco2)
    k += 1
end