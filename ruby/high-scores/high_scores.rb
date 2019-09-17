class HighScores

  def initialize(scores)
    @scores = scores
  end

  def scores
    @scores
  end

  def personal_best
    scores.max
  end

  def personal_top_three
    scores.sort.last(3).reverse
  end

  def latest
    scores.last
  end

  def latest_is_personal_best?
    latest == personal_best
  end

end
