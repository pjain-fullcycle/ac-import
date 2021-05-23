# Blog

## Running the app locally
#### Dependencies
* Redis
* Ruby 2.5.7

Use bundler to install the project gems:

```
bundle install
```

Create and setup local database:  

```bash
bundle exec rake db:create
bundle exec rake db:migrate

To run the application server:  

```bash
bundle exec rails s
```
To run Sidekiq
```bash
bundle exec sidekiq
```

## Development workflow
1)  create one model for user, which stores information like first_name, last_name, dob, phone number, email
2)  phone number and email has unique validation
3)  create one page which will list users(index action)
4)  provide option to upload csv for users
5)  upload csv and create users in background using sidekiq or any prefered way skip records with validation errors.
6)  once the csv is processed in the background, refresh the page using an action cable.


#please use following csv format to upload a user details that I attaching on public folder with file name: #users_details.csv
