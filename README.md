# GraphQL Test

Testing a GraphQL API on a Ruby on Rails project.

## Setup

- `bundle install`
- `rake db:create db:migrate db:seed`

## Examples

- run `rails s`
- Navigate to [http://localhost:3000](http://localhost:3000)
- Try out the `query` and `mutate` examples

## Gems

The following Gems were used to implement the GraphQL API:

- **[graphql](https://github.com/rmosolgo/graphql-ruby)**: Used to define the schema and execute queries.
- **[graphql-relay](https://github.com/rmosolgo/graphql-relay-ruby)**: Used only to allow mutations. Unfortunately it includes Relay specific patterns though.

## Guides

Some useful guides I found about GraphQL and the gems:

- [Graph QL Specification](https://facebook.github.io/graphql)
- [GraphQL and Relay on Rails — Creating types and Schema](https://medium.com/@gauravtiwari/graphql-and-relay-on-rails-creating-types-and-schema-b3f9b232ccfc)
- [Getting started with Rails, Graphql and Relay](http://mgiroux.me/2015/getting-started-with-rails-graphql-relay/)
- [Example of Relay mutations](https://github.com/rmosolgo/graphql-relay-ruby/blob/5a6d47a88d62a4dc7ff8e9cdf164bcb2fa403791/spec/graphql/relay/mutation_spec.rb)
- [mochini/react-relay-rails](https://github.com/mochini/react-relay-rails)
