class Document < ActiveRecord::Base

  CATEGORIES = ['twelfth_marksheet']

  has_attached_file :doc
  belongs_to :resource, polymorphic: true
  
  validates_attachment_content_type :doc, content_type: [/\Aimage\/.*\z/, 'application/pdf']
  validates :category, :doc, presence: true
  validates :category, inclusion: { in: Document::CATEGORIES }

end