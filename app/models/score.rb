class Score < ApplicationRecord
    validates :name, :score_a, :score_b, :score_c, presence: true
    before_save :sort_the_value!

    private
        def sort_the_value!
            temp_array = [self.score_a, self.score_b, self.score_c]
            temp_array = temp_array.sort().reverse()

            result = []
            
            temp_array.each do |element|
                if element == self.score_a
                    result.append("A")
                elsif element == self.score_b
                    result.append("B")
                else
                    result.append("C")
                end
            end

            self.sorting = result.join(", ").to_s
        end
end
