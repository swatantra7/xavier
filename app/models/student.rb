class Student < ActiveRecord::Base

 include AASM

  validates :name,
            :dob,
            :aadhar_number,
            presence: true

  validates :aadhar_number,
            :email,
            uniqueness: true

  has_many :documents, as: :resource
  accepts_nested_attributes_for :documents


  aasm(:status) do

    state :initiated, initial: true
    state :approved

    event :approve do
      transitions from: :initiated, to: :approved
    end

  end

  def twelfth_marksheet
    self.documents.find_by(category: 'twelfth_marksheet')
  end

end
