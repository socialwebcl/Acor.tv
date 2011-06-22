class JsonFormater
  def self.format(flash, object = nil, data = nil)
    # Devuelve un diccionario que incluye el flash, lo errores del objeto,
    # o opcionalmente una data personalizada
    
    response = {:response => :ok, :result => ''}

    response[:flash] = flash unless flash == nil

    if object != nil
      if object.errors.empty?
        response[:result] = :ok
        response[:response] = object
      else
        response[:result] = :error
        response[:response] = object.errors
      end
    end

    if response[:result] == :ok and data != nil
      response[:response] = data
    end

    return response
  end
    
end
