require "active_model"

class Person
  include ActiveModel::Attributes
  include ActiveModel::Validations

  # @dynamic name, name=
  attribute :name, :string
end

Person.attribute_types

ActiveModel::Error::CALLBACKS_OPTIONS
ActiveModel::Error::MESSAGE_OPTIONS

error = ActiveModel::Error.new(Person.new, :name, :too_short, count: 5)
error.attribute
error.type
error.options
error.message
error.details
error.detail
error.full_message
error.match?(:name)
error.strict_match?(:name, :too_short, count: 5)
