class Doctor
  attr_accessor :name
  @@DOCTORS = []

  def initialize(name)
    @name = name
    @@DOCTORS << self
  end

end