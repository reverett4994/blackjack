class Card < ActiveRecord::Base
  has_attached_file :picture, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
end
