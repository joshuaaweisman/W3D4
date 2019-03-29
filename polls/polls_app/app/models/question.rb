# == Schema Information
#
# Table name: questions
#
#  id         :bigint(8)        not null, primary key
#  text       :string           not null
#  poll_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Question < ApplicationRecord

    validates :poll_id, presence: true
    validates :text, :presence: true

    has_many :answerchoices,
        foreign_key: :question_id,
        primary_key: :id,
        class_name: :AnswerChoice

    belongs_to :poll,
        foreign_key: :poll_id,
        primary_key: :id,
        class_name: :Poll

end
