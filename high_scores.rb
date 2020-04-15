=begin
Write your code for the 'High Scores' exercise in this file. Make the tests in
`high_scores_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/high-scores` directory.
=end



class HighScores

  def initialize(scores)
    @scores = scores
  end

  def scores
    @scores
  end

  def latest
    return @scores[-1]
  end 

  def personal_best
    return @scores.sort[-1]
  end 

  def latest_is_personal_best?
    if @scores[-1] == @scores.sort[-1]
    return true
    end 
  end 

  def personal_top_three
    if @scores.length < 3
      return @scores.sort.reverse
    else
      top_three = []
      top_three << @scores.sort[-1]
      top_three << @scores.sort[-2]
      top_three << @scores.sort[-3]
      return top_three
    end 
  end

end 
