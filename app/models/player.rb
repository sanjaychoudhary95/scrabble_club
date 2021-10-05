class Player < ApplicationRecord
  has_many :participants, dependent: :destroy

  def full_name
    "#{first_name} #{last_name}"
  end

  def total_scores
    participants.pluck(:score).sum
  end

  def average_score
    return "NA" unless participants.pluck(:score).count > 0
    (total_scores / participants.pluck(:score).count).round
  end

  def participants_count
    participants.count
  end

  def highest_score
    return "NA" unless participants.count > 0
    participants.order('score DESC')&.first&.score || 0
  end
end
