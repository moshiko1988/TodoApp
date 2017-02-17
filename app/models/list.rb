# frozen_string_literal: true

class List < ApplicationRecord
  validates :note, presence: true
end
