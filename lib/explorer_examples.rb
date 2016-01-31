class ExplorerExamples
  EXAMPLES = [
    {
      name: 'View a book',
      query: %q(
query getBook {
  book(id: 2) {
    ...getDetails
    price
    genre
    inStock: in_stock
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
      name: 'List all books',
      query: %q(
{
  books {
    edges {
      node {
        id, name
        author { name }
      }
    }
  }
}
      )
    },
    {
      name: 'Edit a book name',
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
    },
    {
      name: 'Reflect schema',
      query: %q(
{
  __schema {
    types { name, fields { name } }
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
