module EREDE
  class Store
    attr_accessor :token,
                  :filiation,
                  :environment

    # @param token [String] Token
    # @param filiation [String] filiation
    # @param environment [Environment] The environment
    def initialize(token, filiation, environment = nil)
      environment ||= Environment.production

      @token = token
      @filiation = filiation
      @environment = environment
    end

    def to_json(*)
      {
        token: @token,
        filiation: @filiation
      }.delete_if { |k, v| v.nil? }.to_json
    end
  end
end
