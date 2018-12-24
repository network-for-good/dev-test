class Question < ApplicationRecord
  has_many :options

  validates :label, presence: true, length: { maximum: 150 }

  def options_string=(option_string)
    option_string.to_s.split(',').map(&:strip).each_with_index do |option, index|
      # for each new option
      if (found_option = options.select { |o| o.name.downcase == option.downcase }.first).present?
        # if there already existed an option with the same name (case insenstive)
        # update the position and name (case sensitive)
        found_option.update(position: index + 1, name: option)
      else
        # if there wasn't an option then build it
        options.create(name: option, position: index + 1)
      end
    end
  end
end
