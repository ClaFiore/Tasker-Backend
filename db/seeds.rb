require 'date'
Team.destroy_all
Goal.destroy_all
Employee.destroy_all
Notification.destroy_all
Project.destroy_all
Task.destroy_all

flatiron = Team.create(name: 'Flatiron')
gitme = Team.create(name: "Git Me Baby One More Time")
titanic = Team.create(name: "titanic = {float: nil}")
coaches = Team.create(name: "Cool Coaches")

p = Employee.create(team_id: flatiron.id, managed_team_id: coaches.id,first_name: 'Paul', email: 'paul@gmail.com', password: 'paul', color: '#ed440c', title: 'Senior Software Engineer', department: 'SE')
m = Employee.create(team_id: coaches.id, managed_team_id: gitme.id, first_name: 'Mansour', last_name: 'Cheyo',department: 'SE', title: 'Software Engineer', email: 'mansour@gmail.com', password: 'mansour', dob: 'September 27', address: 'Virginia', phone: '(202)-123-xxxx', color: "#009688") 
m = Employee.create(team_id: coaches.id, managed_team_id: titanic.id, first_name: 'Mark', last_name: 'Smith',department: 'SE', title: 'Software Engineer', email: 'mark@gmail.com', password: 'mark', dob: 'January 10', address: 'Maryland', phone: '(202)-123-xxxx', color: "#009688") 

c = Employee.create(team_id: gitme.id, first_name: 'Claudia', last_name: 'Borghini', title: 'Junior Software Engineer', department: 'SE', photo:'https://www.google.com/search?q=claudia+borghini&rlz=1C5CHFA_enUS865US865&sxsrf=ALeKk00tc9gyK89lqyqMBHz4GRD3gJrC6Q:1602178699430&tbm=isch&source=iu&ictx=1&fir=n5QIq3SPgVRj5M%252C79eyK_JI8f5fSM%252C_&vet=1&usg=AI4_-kTYr1tV_NulCue9lDFNXCTFTz4Y0Q&sa=X&ved=2ahUKEwjO1fvhxKXsAhWmoXIEHQuQAnEQ9QF6BAgKEAQ&biw=1440&bih=789#imgrc=n5QIq3SPgVRj5M', email: 'claborghini@gmail.com', password: 'claudia', dob: 'July 26', address: 'Washington DC', phone: '(929)-000-xxxx', color:"#fc035a")
s = Employee.create(team_id: gitme.id, first_name: 'Sanam', last_name: 'M', email: 'sanam@gmail.com', password: 'sanam', dob: 'May 24', color: "#ffc107", title: 'Junior Software Engineer', department: 'SE')
ch = Employee.create(team_id: gitme.id, first_name: 'Christina', last_name: 'S', email: 'christina@gmail.com', password: 'christina', dob: 'April 14', color: "#9c27b0", title: 'Junior Software Engineer', department: 'SE')
j = Employee.create(team_id: gitme.id, first_name: 'Jina', last_name: 'S', email: 'jina@gmail.com', password: 'jina', dob: 'November 5', color: "#0345fc", title: 'Junior Software Engineer', department: 'SE')

w = Employee.create(team_id: titanic.id, first_name: 'Will', last_name: 'Smith', email: 'will@gmail.com', password: 'will', dob: 'November 12', color: "#136305", title: 'Junior Software Engineer', department: 'SE')
g = Employee.create(team_id: titanic.id, first_name: 'John', last_name: 'Doe', email: 'john@gmail.com', password: 'john', dob: 'August 6', color: "##ed840c", title: 'Junior Software Engineer', department: 'SE')

proj = Project.create(title: 'Mod5 - Final Project', content: 'Create a web app using Ruby on Rails for the backend and React for the frontend', team_id: gitme.id, due_by: Date.parse('2020-10-22'), status: 'in progress')
proj2 = Project.create(title: 'Career Prep', content: 'Complete career prep with your career coach', team_id: gitme.id, due_by: Date.parse('2020-10-23'), status: 'in progress')
proj3 = Project.create(title: 'MVP Presentation', content: 'Create your MVP, styling is not important at this time, focus on the core of your project. Then present your MVP to the team', team_id: gitme.id, due_by: Date.parse('2020-10-14'), status: 'in progress')
proj4 = Project.create(title: 'Graduation', content: 'Congrats, you made it! Enjoy Graduation day', team_id: gitme.id, due_by: Date.parse('2020-10-23'), status: 'in progress')
proj5 = Project.create(title: 'Mod1 - Learn Ruby', content: 'Complete 1 cli project with a team-member', team_id: gitme.id, due_by: Date.parse('2020-07-31'), status: 'completed')
proj5 = Project.create(title: 'Mod4 - Learn React', content: 'With a team-member create an app using React', team_id: gitme.id, due_by: Date.parse('2020-10-02'), status: 'completed')

projA = Project.create(title: 'Complete Managed Team Evaluation', content: 'Prepare spreadsheet with detailed evaluation of your team', team_id: coaches.id, due_by: Date.parse('2020-09-30'), status: 'completed')
projB = Project.create(title: 'Lectures Plan', content: 'Prepare lectures plan with syllabi for upcoming cohort', team_id: coaches.id, due_by: Date.parse('2020-11-01'), status: 'in progress')
projB = Project.create(title: "Managed Team's Graduation", content: 'Assist your cohort with their projects and bring them to graduation', team_id: coaches.id, due_by: Date.parse('2020-10-22'), status: 'in progress')