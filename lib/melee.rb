require 'riot'

module Melee

  module Context

    def self.included(klass)
      klass.class_eval do
        alias :background :setup
        alias :given :helper
      end
    end

    def scenario(what, &definition)
      new_assertion "scenario: ", what, &definition
    end
  end

end

class Riot::Context
  include Melee::Context
end

# Monkey-patch the monkey patch to allow us to have feature anywhere
class Object
  alias :feature :context
end


