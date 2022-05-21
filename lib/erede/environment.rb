module Erede
  class Environment
    PRODUCTION  = 'https://api.userede.com.br/erede'
    SANDBOX     = 'https://api.userede.com.br/desenvolvedores'
    API_VERSION = 'v1'

    attr_accessor :ip,
                  :session_id,
                  :endpoint

    def initialize(endpoint)
      @endpoint = "#{endpoint}/#{API_VERSION}"
    end

    def self.production
      new(PRODUCTION)
    end

    def self.sandbox
      new(SANDBOX)
    end

    def to_json(*)
      {
        consumer: {
          ip: @ip,
          sessionId: @sessionId
        }
      }.delete_if { |k, v| v.nil? }.to_json
    end
  end
end
