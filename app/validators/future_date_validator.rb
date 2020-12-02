class FutureDateValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
        if value.present? && value <= Time.zone.now
            message = options[:message] || :future_date # Essa mensagem de erro vem do I18N, na pasta locales no arquivo "custom_validations.yml"
            record.errors.add(attribute, message)
        end
    end
end