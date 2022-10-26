![](https://img.shields.io/badge/Microverse-blueviolet)

# Hello Rails-React (Back-end)
> This app works as an API that gets data from a database and manages other back-end aspects for a separate hello-react-rails front-end project. Built with Ruby on Rails.

## 🛠️ Built With

- Ruby on Rails
- PostsgreSQL

## [Hello Rails-React (Front-end)](https://github.com/desorgui/hello-react-front-end)

- To ensure the app works correctly in your computer first run `rails s` in the Hello Rails-React (Back-end) project so it runs in host `localhost:3000`. Then. run `npm start` in the Hello Rails-React (Front-end) project so it runs in host `localhost:3001` so the fetch of the API works properly.

## 🧮 Prerequisites

### Install
- Node.js
- npm
- Ruby
- Ruby on Rails

### Setup

Follow these steps on your console to properly clone this repository on your desktop:

```
$ cd desktop
$ git clone 'repo_path'
$ cd 'repo_name'
$ code .
Run 'ruby file_name' to see outputs in the console.
Run 'rubocop' to check linter offenses.
```

If you create a new rails application you can create the app with the following command:
```
rails new my_new_rails_app --api --git --database=postgresql -T
```
If you already have a rails application you can setup the app with the following command:
```
rails new . --api --git --database=postgresql -T
```

Create database for the project with `bin/rails db:create`, otherwise create databases manually in PostgreSQL.

If necessary, add username and password in `config/database.yml` for development and test:
```
development:
  <<: *default
  database: hello-react-rails-backend_development
  host: ''
  username:
  password:
  
  test:
  <<: *default
  database: hello-react-rails-backend_test
  username:
  password:
```

## Authors

👤 **Guishny Desor**

- GitHub: [@desorgui](https://github.com/desorgui)
- Twitter: [@DGuishny](https://twitter.com/DGuishny)
- LinkedIn: [Guishny Desor](https://www.linkedin.com/in/guishny-desor-5421a01a9/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](./MIT.md) licensed.
