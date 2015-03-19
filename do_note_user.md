+ Generate a User resource that securely stores user passwords in a password_digest column
+ Install the bcrypt-ruby gem
+ Declare reasonable validations in the User model
+ Create a few example users in the database using the Rails console

+ Allow new users to create an account using a sign-up form
+ Create a user profile page that shows a user's account information
+ Let the user edit their account information
+ Allow users to delete their account
+ Show a list of users, for completeness sake

+ Add a route to support the custom URL http://localhost:3000/signup.
+ Generate a convenient "Sign Up" link at the top of every page.
+ Define a new action in the UsersController that renders the new.html.erb view template to display a sign-up form.
+ Define a create action in the UsersController that accepts the form data and uses it to create a new user in the database, but only if the user valid.
