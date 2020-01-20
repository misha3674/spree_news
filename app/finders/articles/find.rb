module Spree
  module Articles
    class Find
      def initialize(scope, params)
        @scope = scope
      end

      def call
        # countries = by_shippability(scope)
        #
        # countries
        scope
      end

      private

      attr_reader :scope
    end
  end
end
