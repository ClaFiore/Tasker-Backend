require 'date'
Team.destroy_all
Goal.destroy_all
Employee.destroy_all
Notification.destroy_all
Project.destroy_all
Task.destroy_all

flatiron = Team.create(name: 'Flatiron')
gitme = Team.create(name: "Git Me Baby One More Time")
coaches = Team.create(name: "Cool Coaches")

p = Employee.create(team_id: flatiron.id, managed_team_id: coaches.id,first_name: 'Paul', email: 'paul@gmail.com', password: 'paul')
m = Employee.create(team_id: coaches.id, managed_team_id: gitme.id, first_name: 'Mansour', email: 'mansour@gmail.com', password: 'mansour') 

c = Employee.create(team_id: gitme.id, first_name: 'Claudia', email: 'claborghini@gmail.com', password: 'claudia')
s = Employee.create(team_id: gitme.id, first_name: 'Sanam', email: 'sanam@gmail.com', password: 'sanam', dob: 'May 24')

proj = Project.create(title: 'Mod5 Final Project', content: 'Create a web app using Ruby on Rails for the backend and React for the frontend', team_id: gitme.id, due_by: DateTime.new(2020,10,22,18,00,00), status: 'in progress')