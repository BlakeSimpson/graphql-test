class ExplorerExamples
  EXAMPLES = [
    {
      name: 'Get Book query',
      query: %q(
query getBook {
  book(id: 2) {
    ...getDetails
    price
    author {
      total_books
    }
  }
}

fragment getDetails on Book {
  id
  name
}
      )
    },
    {
      name: 'Edit Book name',
      query: %q(
mutation {
  editBook(input: {id: 2, name: "Updated book name", clientMutationId: 1}) {
    book {
      id
      name
    }
  }
}
      )
    }
  ]

  def self.example(index = 0)
    EXAMPLES[index]
  end

  def self.all_examples
    EXAMPLES
  end

end
