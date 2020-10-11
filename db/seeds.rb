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
m = Employee.create(team_id: coaches.id, managed_team_id: gitme.id, first_name: 'Mansour', last_name: 'Cheyo',department: 'SE', title: 'Software Engineer', email: 'mansour@gmail.com', password: 'mansour', dob: 'January 10', address: 'Virginia', phone: '(202)-111-xxxx') 

c = Employee.create(team_id: gitme.id, first_name: 'Claudia', last_name: 'Borghini', title: 'Junior Software Engineer', department: 'SE', photo:'https://www.google.com/search?q=claudia+borghini&rlz=1C5CHFA_enUS865US865&sxsrf=ALeKk00tc9gyK89lqyqMBHz4GRD3gJrC6Q:1602178699430&tbm=isch&source=iu&ictx=1&fir=n5QIq3SPgVRj5M%252C79eyK_JI8f5fSM%252C_&vet=1&usg=AI4_-kTYr1tV_NulCue9lDFNXCTFTz4Y0Q&sa=X&ved=2ahUKEwjO1fvhxKXsAhWmoXIEHQuQAnEQ9QF6BAgKEAQ&biw=1440&bih=789#imgrc=n5QIq3SPgVRj5M', email: 'claborghini@gmail.com', password: 'claudia', dob: 'July 26', address: 'Washington DC', phone: '(929)-000-xxxx')
s = Employee.create(team_id: gitme.id, first_name: 'Sanam', email: 'sanam@gmail.com', password: 'sanam', dob: 'May 24')

proj = Project.create(title: 'Mod5 - Final Project', content: 'Create a web app using Ruby on Rails for the backend and React for the frontend', team_id: gitme.id, due_by: Date.parse('2020-10-22'), status: 'in progress')
proj2 = Project.create(title: 'Career Prep', content: 'Complete career prep with your career coach', team_id: gitme.id, due_by: Date.parse('2020-10-23'), status: 'in progress')
proj3 = Project.create(title: 'MVP Presentation', content: 'Create your MVP, styling is not important at this time, focus on the core of your project. Then present your MVP to the team', team_id: gitme.id, due_by: Date.parse('2020-10-14'), status: 'in progress')
proj4 = Project.create(title: 'Graduation', content: 'Congrats, you made it! Enjoy Graduation day', team_id: gitme.id, due_by: Date.parse('2020-10-23'), status: 'in progress')
proj5 = Project.create(title: 'Mod1 - Learn Ruby', content: 'Complete 1 cli project with a team-member', team_id: gitme.id, due_by: Date.parse('2020-07-31'), status: 'completed')
proj5 = Project.create(title: 'Mod4 - Learn React', content: 'With a team-member create an app using React', team_id: gitme.id, due_by: Date.parse('2020-10-02'), status: 'completed')

projA = Project.create(title: 'Complete Managed Team Evaluation', content: 'Prepare spreadsheet with detailed evaluation of your team', team_id: coaches.id, due_by: Date.parse('2020-09-30'), status: 'completed')
projB = Project.create(title: 'Lectures Plan', content: 'Prepare lectures plan with syllabi for upcoming cohort', team_id: coaches.id, due_by: Date.parse('2020-11-01'), status: 'in progress')