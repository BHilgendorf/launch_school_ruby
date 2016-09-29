class Television
  def self.manufacturer
    # method logic
  end

  def model
    # method logic
  end
end

# What happens if I called the following

tv = Television.new
tv.manufacturer        #no method error 'manufacturer', that is a class method
tv.model              #nothing really, there's no logic in the instance method

Television.manufacturer  #nothing really, there's no login in the class method
Television.model          #no method error. that is an instance method, not class method
