class Track < ApplicationRecord
  belongs_to :track_category
  has_many :mogi_results

  def increment_rank(value)
    case value
    when 1
      self.first += 1
    when 2
      self.second += 1
    when 3
      self.third += 1
    when 4
      self.fourth += 1
    when 5
      self.fifth += 1
    when 6 
      self.sixth += 1
    when 7 
      self.seventh += 1
    when 8 
      self.eighth += 1
    when 9 
      self.ninth += 1
    when 10 
      self.tenth += 1
    when 11 
      self.eleventh += 1
    when 12 
      self.twelfth += 1
    end
    save
  end

  def rank_ave()
    rank_count = [
      self.first,
      self.second, 
      self.third,
      self.fourth, 
      self.fifth,
      self.sixth,
      self.seventh, 
      self.eighth,
      self.ninth,
      self.tenth,
      self.eleventh,
      self.twelfth,
    ]
    race_sum = rank_count.sum
    rank = []
    rank_count.each_with_index do |count, index|
      rank << count * (index + 1)
    end
    rank_sum = rank.sum
    ave = (rank_sum / race_sum.to_f).round(2)
  end
end
