BookType = GraphQL::ObjectType.define do
  name "Book"
  description "A single Book entry returns a book with details and Author"

  field :id, types.ID, "This id of this book"
  field :name, types.String, "The name of this book"
  field :genre, types.String, "Genre of this book"
  field :in_stock, types.Boolean, "Indicates if this book is in stock or not"
  field :price, types.Float,  "Recommended price of this book"
  field :created_at, types.String, "The time at which this book was recorded"
  field :author, AuthorType, "Author of this book"
end
