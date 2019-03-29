# == Schema Information
#
# Table name: polls
#
#  id         :bigint(8)        not null, primary key
#  title      :string           not null
#  author_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Poll < ApplicationRecord

    validates :author_id, :presence: true
    validates :title, :presence: true

    has_many :questions,
        foreign_key: :poll_id,
        primary_key: :id,
        class_name: :Question

    belongs_to :user,
        foreign_key: :author_id,
        primary_key: :id,
        class_name: :User

end
