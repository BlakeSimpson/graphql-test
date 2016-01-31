MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :editBook, field: EditBookMutation.field
end
