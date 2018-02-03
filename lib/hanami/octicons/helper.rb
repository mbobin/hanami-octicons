# frozen_string_literal: true

require "octicons"
require "hanami/utils/escape"

module Hanami
  module Octicons
    # Create a helper method for GitHub's octiocons
    module Helper
      private

      def octicon(symbol, options = {})
        return "" unless symbol

        svg = ::Octicons::Octicon.new(symbol, options).to_svg
        Utils::Escape::SafeString.new(svg)
      end
    end
  end
end
