SimpleForm.setup do |config|
  config.wrappers :default, class: :input, error_class: 'field-with-errors' do |b|
    b.use :label_input
    b.use :hint,  wrap_with: { tag: :span, class: :hint }
    b.use :error, wrap_with: { tag: :span, class: :error }

    config.error_notification_class = 'alert alert-error'
    config.error_notification_tag = :div
  end
end
