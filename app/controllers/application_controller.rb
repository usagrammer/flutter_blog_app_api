class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods

  before_action :authenticate

  protected
  def authenticate
    authenticate_or_request_with_http_token do |token, options|
      puts "token:>>>#{token}"
      puts "options:>>>#{options}"
      token == 'hoge'
    end
  end
end
