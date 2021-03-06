# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  job_id     :integer
#

class Category < ActiveRecord::Base
  has_and_belongs_to_many :jobs

  def slug
    self.name.downcase.gsub( /\W/, "" )
  end

  def get_sorted_jobs
      self.jobs.sort_by do |j|
          j.created_at
      end
  end
#
#   def get_sorted_comments
#       self.comments.sort_by do |c|
#           c.created_at
#       end
#   end

end
