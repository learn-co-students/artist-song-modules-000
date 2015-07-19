module Memorable

	NUMBER_OF_INSTANCES = []

	def initialize
		NUMBER_OF_INSTANCES<<self
	end

	module ClassMethods

    def count
      self.all.count
    end

    def reset_all
      self.all.clear
    end

    def all
    	NUMBER_OF_INSTANCES
    end

  end

end