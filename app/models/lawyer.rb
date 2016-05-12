require 'carrierwave/orm/activerecord'

class Lawyer < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
