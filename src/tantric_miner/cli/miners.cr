require "io/memory"
require "../../miners/ccminer"

module TantricMiner
  module CLI
    module Miners
      extend self

      def run
        MINERS::CCMINER.install
      end
    end
  end
end
