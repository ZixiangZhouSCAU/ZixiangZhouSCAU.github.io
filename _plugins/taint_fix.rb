# Workaround for Ruby 3.2+ removing tainted?/taint APIs used by Liquid 4.0.3.
# Safe no-op to keep Jekyll rendering on Windows.
class Object
  unless method_defined?(:tainted?)
    def tainted?
      false
    end
  end

  unless method_defined?(:taint)
    def taint
      self
    end
  end
end
