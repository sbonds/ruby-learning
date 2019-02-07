=begin
Code magnets:














 







Expected output:
---
HFRB: !ruby/object:Book
  title: Head First Ruby
  pages: 450
=end

require 'yaml/store'

class Book
    attr_accessor :title, :pages
end

store = YAML::Store.new('books.yaml')

book = Book.new
book.title = "Head First Ruby"
book.pages = 450

store.transaction do
    store["HFRB"]=book
end