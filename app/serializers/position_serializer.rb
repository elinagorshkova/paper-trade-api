class PositionSerializer < ActiveModel::Serializer
  attributes :id, :ticker, :volume, :price, :side
  has_one :portfolio
end
