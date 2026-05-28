# Disable Liquid's taint check on Ruby versions where Object#tainted? was removed
module Liquid
  class Variable
    # replace taint_check to be a no-op to avoid NoMethodError on `tainted?`
    def taint_check(obj)
      false
    end
  end
end
