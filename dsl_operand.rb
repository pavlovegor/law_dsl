class DslOperand
  attr_reader :allowed
  attr_reader :response
  attr_reader :method_name

  def initialize(allowed, response, method_name = nil)
    @allowed = allowed
    # @response = response.is_a?(Array) ? response : Array(response)
    @response = response
    @method_name = method_name
  end

  def | (operand)
    if allowed
      self
    elsif operand.allowed
      operand
    else
      DslOperand.new(false, [self, operand].flatten, nil)
    end
  end

  def & (operand)
    if allowed && operand.allowed
      DslOperand.new(true, [self, operand].flatten, nil)
    elsif allowed && !operand.allowed
      operand
    elsif !allowed && operand.allowed
      self
    elsif !allowed && !allowed
      DslOperand.new(false, [self, operand].flatten, nil)
    end
  end

  def !@
    DslOperand.new(!allowed, response, method_name)
  end

  def hash_format
    {
      "allowed" => self.allowed,
      "response" => self.response.flatten
    }
  end
end