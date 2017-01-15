#  Point Mutations
#  Count the number of differences of two strings.

# Input: string at instantion, string at method hamming_distance

# output: Fixnum. Number of differences between the two strings

# rules: if strings are not of equal length, compute based on shorter string

#  methods needed:
#                Instance Method - hamming_distance(string)
#                Initialize method - takes string
# 
#               Class Methods - none

#  Approach
#   - determine if strands are of same length
#   - if not, set master_strand to shorter string
#   - iterate through master_strand.each_char.with_index
#   - compare master_strand[index] to comparison_strand[index]
#   - if != counter += 1
#   - return counter

class DNA
  def initialize(strand_one)
    @strand_one = strand_one
  end

  def hamming_distance(strand_two) 
    @strand_two = strand_two
    set_strands_for_comparison

    mutation_count = 0
    @master_strand.each_char.with_index do |char, index|
      mutation_count += 1 if char != @comparison_strand[index]
    end
    mutation_count
  end

  private

  def set_strands_for_comparison
    if @strand_one.length <= @strand_two.length
      @master_strand, @comparison_strand = @strand_one, @strand_two
    else
      @master_strand, @comparison_strand = @strand_two, @strand_one
    end
  end

end



