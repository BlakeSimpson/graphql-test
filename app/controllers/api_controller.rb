class ApiController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def graph
    query = GraphQL::Query.new(
        Graph::Schema,
        query_string,
        variables: query_variables
    )

    respond_to do |format|
      format.json { render json: query.result }
      format.xml  { render xml:  query.result }
      format.text { render text: JSON.pretty_generate(query.result) }
    end
  end

  private

  def query_string
    @query_string ||= request.body.read
  end

  def query_variables
    @query_variables ||= params[:variables]
  end
end
