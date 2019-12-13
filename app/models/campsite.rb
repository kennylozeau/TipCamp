# == Schema Information
#
# Table name: campsites
#
#  id          :bigint           not null, primary key
#  name        :string           not null
#  description :string           not null
#  location    :string           not null
#  latitude    :float            not null
#  longitude   :float            not null
#  price       :float            not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Campsite < ApplicationRecord

  validates :name, :description, :location, :latitude, :longitude, :price, presence: true

  has_many_attached :photos

end
