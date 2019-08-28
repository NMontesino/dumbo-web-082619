require 'pry'
require 'rest-client'
require 'json'

def welcome_and_get_input
    puts "Welcome to the Library! 🎄"
    puts "What are you searching for?"
    gets.chomp
end

def get_google_books(input)
    response = RestClient.get("https://www.googleapis.com/books/v1/volumes?q=#{input}")
    parsed_response = JSON.parse(response.body)
end

def get_all_book_titles(array_of_books)
    book_titles = array_of_books.map do |book|
        book["volumeInfo"]["title"]
    end
    puts "_" * 25
    book_titles.each_with_index{|title, index| puts "#{index + 1}) #{title}"}
    puts ""
    puts "Which book would you like to see more about?"
    gets.chomp
end

def find_the_book(array_of_books, book_title)
    found_book = array_of_books.find do |book|
        book["volumeInfo"]["title"] == book_title
    end
    if found_book
        puts ""
        puts "Title: "
        puts found_book["volumeInfo"]["title"]
        puts ""
        puts "Description: "
        puts found_book["volumeInfo"]["description"]
    else
        puts "No Matches"
    end
end

user_input = welcome_and_get_input()
response = get_google_books(user_input)
book_title = get_all_book_titles(response["items"])
find_the_book(response["items"], book_title)
