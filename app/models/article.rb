class Article < ApplicationRecord
    # before_validation :before_val
      around_create :around_create
      after_commit :after_commit
      before_save  :after_save
      after_validation :after_validation

  validates :text, presence: true#, numericality: { only_integer: true }
  # has_one_and_belongs_to_many :posts
  private
  def after_save
      # byebug
      puts "i m in before_save"
  end
  def around_create
    puts "i am before the yield"
    yield
    puts "i am after the yield"
  end
  def after_commit
    puts "i am in after_commit"
  end
  def after_validation
    puts errors.messages
  end
end
