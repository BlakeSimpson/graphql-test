class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from GraphQL::ParseError do |error|
    message = 'There was an error in your GraphQL syntax'

    respond_to do |format|
      format.json { render json: {error: message}, status: :unprocessable_entity }
      format.xml  { render xml:  {error: message}, status: :unprocessable_entity }
      format.text { render text: message, status: :unprocessable_entity }
    end
  end
end
