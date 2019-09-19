class HighScores

  def initialize(scores)
    @scores = scores
  end

  def scores
    @scores
  end

  def personal_best(n=1)
    n == 1 ? scores.max : scores.max(n)
  end

  def personal_top_three
    personal_best(3)
  end

  def latest
    scores.last
  end

  def latest_is_personal_best?
    latest == personal_best
  end

end
