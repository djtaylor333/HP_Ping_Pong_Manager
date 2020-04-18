class Tournament < ApplicationRecord
  has_many :players, dependent: :destroy
  has_many :matches, dependent: :destroy

  UDE = 'Unseeded Double Elimination Tournament'
  SDE = 'Seeded Double Elimination Tournament'
  SSES = 'Seeded Single Elimination Split Skill Tournament'

  def winner
    if format == UDE
      matches.sort { |m| m.id }.reverse.map(&:winner).last
    end
  end

  def winner_name
    Player.find_by(id: winner).name
  end
end