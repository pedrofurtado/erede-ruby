module Erede
  module Services
    class Base
      POST = Net::HTTP::Post
      GET  = Net::HTTP::Get
      PUT  = Net::HTTP::Put

      attr_accessor :store

      def initialize(store)
        self.store = store
      end

      def url
        "#{store.environment.endpoint}/transactions"
      end

      def execute
        raise NotImplementedError
      end

      def send_request(method, body = '')
        uri = URI(url)

        query_string = uri && uri.query && !uri.query.nil? && !uri.query.empty? ? "?#{uri.query}" : ''

        response = Net::HTTP.new(uri.host, uri.port)
                            .tap do |net_http|
                              net_http.use_ssl = uri.scheme == 'https'
                              net_http.set_debug_output($stdout)
                            end
                            .request(
                              method.new(uri.path + query_string, { 'Content-Type': 'application/json', 'Transaction-Response': 'brand-return-opened' })
                                            .tap do |request|
                                              request.body = body
                                              request.basic_auth store.filiation, store.token
                                            end
                            )

        Erede::Responses::EredeResponse.new.tap do |erede_response|
          erede_response.code = response.code
          erede_response.response = JSON.parse(response.body)
        end
      end
    end
  end
end
