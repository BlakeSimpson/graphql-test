AuthorType = GraphQL::ObjectType.define do
  name "Author"
  description "A single Author with details of name and total books"

  field :id, types.ID, "This id of this author"
  field :name, types.String, "The name of the author"
  field :total_books, types.Int, "Total books the author has written"
  field :created_at, types.String, "The time at which this author was recorded"
end
