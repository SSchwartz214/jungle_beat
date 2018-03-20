class Node
  attr_reader :data,
              :pointer
  def initialize(data)
    @data = data
    @pointer = nil
  end

end
