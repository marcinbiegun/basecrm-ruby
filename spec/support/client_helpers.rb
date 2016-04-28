module ClientHelpers
  def client
    @client ||= BaseCRM::Client.new(access_token: access_token, user_agent: user_agent, base_url: base_url)
  end

  def access_token
    @access_token ||= ENV.fetch("BASECRM_ACCESS_TOKEN") { raise '"BASECRM_ACCESS_TOKEN" has not been found.'  }
  end

  def user_agent
    "BaseCRM/v2 Ruby/#{BaseCRM::VERSION}+tests"
  end

  def base_url
    ENV.fetch("BASECRM_BASE_URL") { nil }
  end

  def contact
    @contact ||= FactoryGirl.create(:contact)
  end
end

RSpec.configure do |config|
  include ClientHelpers
end

FactoryGirl::SyntaxRunner.send(:include, ClientHelpers)
