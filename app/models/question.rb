class Question < ApplicationRecord
  has_many :options

  validates :label, presence: true, length: { maximum: 150 }

  def options_string=(option_string)
    new_options = option_string.to_s.split(',').map(&:strip)

    new_options.each_with_index do |option, index|
      # for each new option
      if (found_option = options.select { |o| o.name.downcase == option.downcase }.first).present?
        # if there already existed an option with the same name (case insenstive)
        # update the position and name (case sensitive)
        found_option.update(name: option)
      else
        # if there wasn't an option then build it
        options.create(name: option, position: index)
      end
    end
  end
end
