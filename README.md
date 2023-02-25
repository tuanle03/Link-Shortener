# Link Shortener
A simple application to shorten long URLs, similar to Bitly.

## Features
- Generate shortened links from long URLs.
- Generate QRCode from shortened links.
- Redirect to the original URL when a shortened link is clicked.
- Basic statistics for each shortened link (number of clicks, etc.).

## Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites
- Ruby on Rails installed on your computer.

### Installation
1. Clone the repository to your local machine
```md
git clone https://github.com/tuanle03/Link-Shortener.git
```
2. Change into the project directory
```md
cd Link-Shortener
```
3. Install the dependencies
```md
bundle install
```
4. Create the database
```md 
rails db:create
```
5. Run the migrations
```md
rails db:migrate
```
6. Start the development server 
```md
rails s
```
7. Open your browser and go to `http://localhost:3000` to view the app.
## Deployment
The app can be easily deployed to a hosting service such as Heroku or AWS. Please refer to their respective documentation for more information.

## Built With
- Ruby on Rails - Backend
- SQLite3 - Database
- Haml/CSS/JS - Frontend

## Contributing
Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are greatly appreciated.

1. Fork the Project
2. Create your Feature Branch 
```md 
gco -b [branch name]
```

3. Add your file changes 
```md 
ga [file change]
```

4. Commit your Changes 
```md 
gc -m "message"
```
5. Push to the Branch 
```md
gpsup origin $(git_current_branch)
```
6. Open a Pull Request

## Author
### Tuan Le
