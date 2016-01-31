BookConnection = GraphQL::Relay::RelationConnection.create_type(BookType) do
  field :totalCount do
    type types.Int
    resolve -> (obj, args, ctx) { obj.object.count }
  end
end
