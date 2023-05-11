# 📖 About

> This is an API of secret menu items available for my favorite fast food restaurant.

# 🎯Goal

1. INDEX all the instances of secret menu items in my API
2. SHOW an instance of a secret menu item
3. CREATE an instance of a secret menu item
4. UPDATE an instance of a secret menu item
5. DELETE an instance of a secret menu item

# 🗺️ Roadmap

- [ ] Create Rails API
- [ ] Enable CORS
- [ ] Create model, controller, database, migration table, and route via rails g resource command
- [ ] Specify what attributes and datatypes of secret menu item
- [ ] Define index, show, create, update, and destroy actions
- [ ] Create routes for index, show, create, update, and destroy actions
- [ ] Seed data
- [ ] Fire up server & postman to test API functionality

# 📩 Installing ROR

> Install Ruby on Rails on windows 👇

1. First you need to install [Ruby](rubyinstaller.org/downloads)
2. Select the first option `=> Ruby+Devkit`
3. Open the executable in your machine, once it finishes the setup, a command line prompt will appear.
4. In the CLI simply hit enter, it will start the second part of the setup, after it finishes it will ask you again, 
   you hit enter again!
5. Now you are able to check that you have ruby installed by executing in the CLI `ruby --version`
6. You won't be able to use gems until you restart your machine, check it out `gem --version`
7. Restart PC
8. You can now use gems, check `gem --version`
9. You can install rails with the following command `gem install rails`
10. The final step is installing SQLite, run `gem install sqlite3`

# 🪲 Bugs

> Here I share all the bugs I found along the way and their solutions 👇

### ❌ ActiveModel::UnknownAttributeError: 

Full error 👇

```bash
ActiveModel::UnknownAttributeError: unknown attribute 'menu_name' for SecretMenuItem
```

#### 💭 Why?
- I forgot to add `*` in `cors.rb`
- I put an additional `,` at the end of `seeds.rb` data
- I was wrongly updating the migration

#### ✅ How was the bug fixed?

> JetBrains IDE is simply the best, it suggested me to install Rubocop linter 👇

1. I installed Rubocop linter and checked every file for possible fixes, because the error pointed to line:9 in the 
   `seeds.rb` but 
   the 
   problem was not there

2. I wasn't sure if the changes I made where updated, had to find a way to be sure of that, used `rails 
   db:migrate:redo`, this was the key to solve the problem after the changes made with the help of `Rubocop`
   
   ![image](https://github.com/wwwdrt/secret_menu_api/assets/100488248/5fdd4d50-7bcb-4baa-9dc4-03f9dc9e0151)

3. To further validate that everything was working fine I queried the databased, first run `rails c`, then 
   `SecretMenuItem.all` to `SELECT "secret_menu_items".* FROM "secret_menu_items"`, the data was successfully served,
   I knew that it was working.
   
   ![image](https://github.com/wwwdrt/secret_menu_api/assets/100488248/e4602746-c0df-4a49-a28e-73701aa84175)
   
4. The last test that would determine the success was to seed the data `rails db:seed RAILS_ENV=development` which 
   was the command that triggered the error, but now it was all fixed.
   
# ⚒️ Testing

### 🔍 Index Action & Index Route

![image](https://github.com/wwwdrt/secret_menu_api/assets/100488248/f1ac3187-da57-457f-b920-7966c039ed89)

### 🔍 Show Action & Show Route

<img width="960" alt="image" src="https://github.com/wwwdrt/secret_menu_api/assets/100488248/fbc90e66-b3ce-4e98-ab09-fd924db69bfd">

### 🔍 Create Action & Create Route

<img width="960" alt="image" src="https://github.com/wwwdrt/secret_menu_api/assets/100488248/45a5a20a-aec0-4d73-98d0-57a64ea0adc8">

<img width="819" alt="image" src="https://github.com/wwwdrt/secret_menu_api/assets/100488248/bcba8134-9805-44c1-82a7-144d1416b13c">

### 🔍 Update Action & Update Route

<img width="960" alt="image" src="https://github.com/wwwdrt/secret_menu_api/assets/100488248/2949b241-3174-41b3-ad79-a699a0188dff">

<img width="956" alt="image" src="https://github.com/wwwdrt/secret_menu_api/assets/100488248/e919d613-d046-4041-85c9-16f6bcf4a2d7">

### 🔍 Destroy Action & Destroy Route

<img width="960" alt="image" src="https://github.com/wwwdrt/secret_menu_api/assets/100488248/874b0ace-ac93-4955-a6bf-f4a3c8a2b809">

<img width="960" alt="image" src="https://github.com/wwwdrt/secret_menu_api/assets/100488248/8f520398-7c5f-4767-81f0-dbd602b2c23e">
