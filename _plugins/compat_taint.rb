# Compatibility shim for Ruby 4.0 where Object#tainted? was removed
unless {}.respond_to?(:tainted?)
  class Object
    def tainted?
      false
    end
  end
end
