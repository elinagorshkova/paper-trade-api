# frozen_string_literal: true

class PortfolioSerializer < ActiveModel::Serializer
  attributes :id, :name, :balance
  has_one :user
  has_many :positions
end
