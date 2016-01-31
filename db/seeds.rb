books = [
  {
    cat: ["book","hardcover"],
    name: "The Lightning Thief",
    author_fields: {
      name: "Rick Riordan",
      total_books: 11
    },
    series: "Percy Jackson and the Olympians",
    genre: "fantasy",
    in_stock: true,
    price: 12.50,
    pages: 384
  },
  {
    cat: ["book","paperback"],
    name: "The Sea of Monsters",
    author_fields: {
      name: "Rick Riordan",
      total_books: 2
    },
    series: "Percy Jackson and the Olympians",
    genre: "fantasy",
    in_stock: true,
    price: 6.49,
    pages: 304
  },
  {
    cat: ["book","paperback"],
    name: "Sophie's Worl: The Greek Philosophers",
    author_fields: {
      name: "Jostein Gaarder",
      total_books: 13
    },
    genre: "fantasy",
    in_stock: false,
    price: 3.07,
    pages: 64
  },
  {
    cat: ["book","paperback"],
    name: "Lucene in Action, Second Edition",
    author_fields: {
      name: "Michael McCandless",
      total_books: 7
    },
    genre: "IT",
    in_stock: true,
    price: 30.50,
    pages: 475
  }
]

books.each do |book|
  author = Author.create!(book.delete(:author_fields))
  book_attrs = book.slice(*Book.attribute_names.map(&:to_sym))
  book_attrs.merge!(author: author)
  Book.create!(book_attrs)
end
