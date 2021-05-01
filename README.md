![](https://img.shields.io/badge/Microverse-blueviolet)

# Twitter redesign

## Table of contents

- [About](#about)
- [Features](#features)
- [ERD](#Entity-Relational-Diagram-for-this-project)
- [Live Demo](#live-demo)
- [Presentation](#presentation)
- [Built with](#built-with)
- [Getting started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation instructions](#installation-instructions)
- [Author](#author)
- [Show your support](#show-your-support)
- [Acknowledgements](#acknowledgments)
- [License](#-license)

---

## About

This project is about creating a twitter redesign. The screenshot of homepage of the project is as below.

![Screenshot-main-page](app/assets/images/project-main-page-shot.png)

The ER diagram used to create the model for this project is as below:


## Features

The features of this project are, user can:

1. register and login to the application.
2. follow or unfollow other users.
3. create an opinion.
5. view all opinions.
4. like or dislike the opinion.
5. view other user profile and their followers and followees.


## Entity Relational Diagram for this project

![ERD](docs/entity-relational-diagram.png)
## Live Demo

This project is hosted on heroku.

[Live demo link](https://twitter-reclone-ha.herokuapp.com)

## Presentation

![Video-about-project-presentation]()

## Built With

- Ruby v2.7.2
- Rails v6.1.3.1
- postgresql v12.6

## Getting Started

### Prerequisites

If you intend to download the project, you will need to have

1. Ruby >= 2.7.2

    For more information on how to install Ruby, follow [this link](https://www.ruby-lang.org/en/downloads/)

2. Ruby on rails >= 6.1.0

    After ruby is installed run cmd `gem  rails`

3. postgresql >= 12

    For installing postgresql [follow this link](http://postgresguide.com/setup/install.html)


### Installation instructions

Follow along the steps below to get a copy at your local machine.

- Navigate to the directory where you want this project to clone and then clone it

    ```
    git clone git@github.com:helciodev/twittter-redesign.git
    ```

- Navigate to the `twittter-redesign` directory

    ```
    cd twittter-redesign
    ```


- install the gem package

    ```
    bundle install
    ```

- install yarn packages
    ```
    yarn install
    ```

- Create your database
    ```
    rails db:create
    ```

- Migrate the database

    ```
    rails db:migrate
    ```

- Start your server

    ```
    rails server
    ```

- Open browser at http://localhost:3000/

## Testing

To test the project run the below cmd from your project root directory.
```
rspec

OR

rspec --format doc
```

## Author

😎 **Helcio André**

- GitHub: [@helciodev](https://github.com/helciodev)
- Twitter: [@helcio_bruno](https://twitter.com/helcio_bruno)
- Linkedin: [Helcio Andre](https://www.linkedin.com/in/helcio-andre/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Icons used for this project is from [Font awesome](https://fontawesome.com/)

## 📝 License

This project is [MIT](./LICENSE) licensed.
