class Recipe < ApplicationRecord
  validates :name, presence: true
  validates :ingredients, presence: true
  validates :directions, presence: true
  validates :cooktime, numericality: { greater_than: 0 }

  belongs_to :user
  has_many :recipe_tags
  has_many :tags, through: :recipe_tags

  def cooktime_conversion
    if cooktime != nil
      minutes = cooktime % 60
      hours = cooktime / 60
      time = ""
      time += "#{hours} hour" if hours == 1
      time += "#{hours} hours" if hours > 1
      time += " #{minutes} minute" if minutes == 1
      time += " #{minutes} minutes" if minutes > 1
    end
    time
  end
end
