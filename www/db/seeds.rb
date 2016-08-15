# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

Company.create([{ name: "Apple", tagline: "Awesome!", phone: "0989098878", email: "amazingjob@hr.hr", about: "about love", welfare: "a lot of money", demand: "gay guys are awesome", idea: "to conquer the world", website: "none", facebook: "nope", twitter: "JIC", ios: "too fancy", android: "hmmm", industry_id: 1, employee_range_id: 4, country_id: 150, location_id: 5 },
            { name: "Airbnb", tagline: "Awesome!", phone: "0989098878", email: "amazingjob@hr.hr", about: "about love", welfare: "a lot of money", demand: "gay guys are awesome", idea: "to conquer the world", website: "none", facebook: "nope", twitter: "JIC", ios: "too fancy", android: "hmmm", industry_id: 2, employee_range_id: 5, country_id: 150, location_id: 1 }])

Category.create([{ name: 'Accounting / Finance' }, { name: 'Sales' }, { name: 'Marketing' }])

Industry.create([{ name: 'Telecommunications Services' }, { name: 'Construction' }, { name: 'Distribution / Logistics' }])

ContractType.create([ { name: 'Full Time'}, { name: 'Part Time'}, { name: 'Internship'}])

SalaryRange.create([ { range: '0 - 99,999 Ks.'}, { range: '100,000 - 249,999 Ks.'}, { range: '250,000 - 499,999 Ks.'}, { range: '500,000 - 749,999 Ks.'}, { range: '750,000 Ks. +'}])

EmployeeRange.create([ { range: '1 - 5'}, { range: '6 - 10'}, { range: '11 - 20'}, { range: '21 - 50'}, { range: '51 - 100'}, { range: '101 - 500'}, { range: '501 - 1000'}, { range: '1000 - 5000'}, { range: '5000 + '}])

Category.find_each { |category| Category.reset_counters(category.id, :jobs) }

Industry.find_each { |industry| Industry.reset_counters(industry.id, :jobs) }

ContractType.find_each { |contract_type| ContractType.reset_counters(contract_type.id, :jobs) }

SalaryRange.find_each { |salary_range| SalaryRange.reset_counters(salary_range.id, :jobs) }

Company.find_each { |company| Company.reset_counters(company.id, :jobs) }

DegreeLevel.create([{ name: "High School or equivalent" }, { name: 'Vocational training' }, { name: 'Certification(Diploma)' }, { name: "Bachelor's degree" }, { name: "Master's degree" }])

puts "Importing cities..."
count = 1
CSV.foreach(Rails.root.join("myanmar_city.csv"), headers: false) do |row|
  Location.create! do |location|
    location.id = count
    location.name = row[2]
  end
  count += 1
end

Location.find_each { |location| Location.reset_counters(location.id, :jobs) }

puts "Importing countries..."
count = 1
CSV.foreach(Rails.root.join("Country.csv"), headers: false) do |row|
  Country.create! do |country|
    country.id = count
    country.name = row[2]
  end
  count += 1
end

user1 = User.create( { email: "admin@example.com", password: "12345678"} )
user1.add_role :admin
user2 = User.create( { email: "employer@example.com", password: "12345678"} )
user2.add_role :employer
user3 = User.create( { email: "seeker@example.com", password: "12345678"} )
user3.add_role :seeker

Job.create!([{ title: "wrestler", description: "a great job", requirement: "be awesome", apply_instruction: "be on time", professional_skill: "sex king", category_id: 2, industry_id: 1, contract_type_id: 1, is_published: true, start_day: "2016-08-01", country_id: 150, location_id: 1, salary_range_id: 5, company_id: 1 },
            { title: "pornstar", description: "a great job", requirement: "be awesome", apply_instruction: "be on time", professional_skill: "sex king", category_id: 1, industry_id: 2, contract_type_id: 2, is_published: true, start_day: "2016-05-01", country_id: 150, location_id: 3, salary_range_id: 4, company_id: 1 },
            { title: "unicorn", description: "a great job", requirement: "be awesome", apply_instruction: "be on time", professional_skill: "sex king", category_id: 3, industry_id: 3, contract_type_id: 1, is_published: true, start_day: "2016-07-01", country_id: 150, location_id: 5, salary_range_id: 2, company_id: 2 },
            { title: "Actor", description: "a great job", requirement: "be awesome", apply_instruction: "be on time", professional_skill: "sex king", category_id: 1, industry_id: 2, contract_type_id: 3, is_published: true, start_day: "2016-01-01", country_id: 150, location_id: 2, salary_range_id: 3, company_id: 2 }])



