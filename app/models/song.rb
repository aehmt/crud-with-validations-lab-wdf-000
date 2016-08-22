class Song < ActiveRecord::Base
  validates :title, presence: { message: "Cannt be empty" }
  validates :title, uniqueness: true
  validates :release_year, presence: true, :if => Proc.new {|u| self.released}, inclusion: { in: 1900..Date.today.year }
end
