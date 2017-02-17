# frozen_string_literal: true

class ListSerializer < ActiveModel::Serializer
  attributes :id, :note

  # def user
  #   object.user.pluck(:id)
  # end
end
