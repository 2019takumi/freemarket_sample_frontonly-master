class PersonalInformation < ApplicationRecord
  belongs_to :user, dependent: :destroy
end
