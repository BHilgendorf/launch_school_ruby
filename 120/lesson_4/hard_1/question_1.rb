class SecretFile

  def initialize(secret_data, log)
    @data = secret_data
    @log = log
  end

  def data
    @log.create_log_entry
    @data
  end
end



class SecurityLogger
  def create_lot_entry
    puts "We're watching you!"
  end
end

