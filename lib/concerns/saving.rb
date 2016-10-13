module Concerns
  module Saving
    def save
      self.class.all << self
      self
    end
  end
end
