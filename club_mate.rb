class ClubMate
  attr_accessor :open

  def initialize
    open = false
  end

  def closed?
    !open
  end
end
