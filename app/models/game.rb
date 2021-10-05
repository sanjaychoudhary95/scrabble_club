class Game < ApplicationRecord
  has_many :participants, dependent: :destroy
  accepts_nested_attributes_for :participants ,:allow_destroy => true

  def first_player_name
    participants.first.player.full_name
  end

  def second_player_name
    participants.second.player.full_name
  end

  def first_player_score
    participants.first.score
  end

  def second_player_score
    participants.second.score
  end

  def winer
    if first_player_score > second_player_score
      "#{first_player_name} Won the game by #{first_player_score}"
    elsif first_player_score < second_player_score
      "#{second_player_name} Won the game by #{second_player_score}"
    else
      "Tied"
    end
  end
end
