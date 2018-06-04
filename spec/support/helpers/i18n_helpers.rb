module Features
  module I18nHelpers
    
    def full_error(model_class, attribute, message)
      @_i18n_dummies ||= {}
      @_i18n_dummies[model_class] ||= model_class.new
      @_i18n_dummies[model_class].errors.full_message(
        attribute,
        @_i18n_dummies[model_class].errors.generate_message(attribute, message)
      )
    end
  end
end