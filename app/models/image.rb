class Image < ApplicationRecord

  has_attached_file :document, styles: { medium: "150x100>" }
  validates_attachment_content_type :document, content_type: /\Aimage\/.*\z/

end
