module Erede
  module Services
    class GetTransaction < ::Erede::Services::Base
      attr_accessor :tid,
                    :refunds,
                    :refundId,
                    :reference

      def url
        raise(Erede::Errors::CieloError, 'You need to specify one: the tid or the reference') if !tid && !reference
        return "#{super}?reference=#{reference}" if reference
        return "#{super}/#{tid}/refunds#{refundId ? '/' + refundId.to_s : ''}" if refunds
        "#{super}/#{tid}"
      end

      def execute
        send_request(GET)
      end
    end
  end
end
