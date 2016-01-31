EditBookMutation = GraphQL::Relay::Mutation.define do
  name "EditBook"

  input_field :id, !types.ID
  input_field :name, !types.ID
  #input_field :price, !types.Float

  return_field :book, BookType

  resolve -> (inputs, ctx) {
    params = inputs.to_h.slice(*Book.attribute_names)
    book = Book.find(inputs['id'])
    book.update(params)

    { book: book }
  }
end
