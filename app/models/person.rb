class Person < ActiveRecord::Base
  has_parents

  validates :sex,
            presence: true,
            inclusion: {in: %w(M F)}
end
