require_relative "memorable"

module Findable
	include Memorable

	def find_by_name(name)
    NUMBER_OF_INSTANCES.detect{|a| a.name}
  end

end