class EnvironmentFlag
  def self.method_missing(method)
    raise 'InvalidFlag' unless method.to_s =~ /$\\?/
    value = ENV[method.to_s.chop.upcase]
    raise 'InvalidFlag' unless value == 'true' || value == 'false'
    value == 'true'
  end
end
