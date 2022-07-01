class User < ApplicationRecord
  has_many :work_experiences, dependent: :destroy
  has_many :activities, dependent: :destroy
  has_many :certificates, dependent: :destroy
  has_many :projects, dependent: :destroy
end
