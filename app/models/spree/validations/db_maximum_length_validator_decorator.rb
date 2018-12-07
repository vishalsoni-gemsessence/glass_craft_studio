Spree::Validations::DbMaximumLengthValidator.class_eval do
  ##
  # Validates a field based on the maximum length of the underlying DB field, if there is one.
  def validate(record)
    return if @field.nil?
    limit = record.class.columns_hash[@field].limit
    value = record[@field.to_sym]
    if value && limit && value.to_s.length > limit
      record.errors.add(@field.to_sym, :too_long, count: limit)
    end
  end
end