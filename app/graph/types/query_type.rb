QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "The query root of this schema. See available queries."

  # Get all books
  connection :books, BookConnection do
    resolve -> (obj, args, ctx) {
      Book.all
    }
  end

  # Get Book by ID
  field :book, BookType do
    argument :id, !types.ID
    description 'Get a book by ID'
    resolve -> (obj, args, ctx) {
      Book.find(args["id"])
    }
  end
end
