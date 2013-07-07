class Piece < ActiveRecord::Base
  belongs_to :gallery
  has_attached_file :image, :styles => { :thumb => "50x50#" }, :default_url => "/images/:style/missing.png"
end
