# frozen_string_literal: true

class List < ApplicationRecord
  validates :note, presence: true
  belongs_to :user
end
