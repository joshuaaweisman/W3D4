# == Schema Information
#
# Table name: responses
#
#  id         :bigint(8)        not null, primary key
#  answer_id  :integer          not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Response < ApplicationRecord

    validates :answer_id, presence: true
    validates :user_id, presence: true

    def not_duplicate_response
         
    end

    belongs_to :answerchoice,
        foreign_key: :answer_id,
        primary_key: :id,
        class_name: :AnswerChoice

    belongs_to :user,
        foreign_key: :user_id,
        primary_key: :id,
        class_name: :User
end
