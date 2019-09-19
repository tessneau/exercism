class Matrix

  def initialize(matrix_string)
    @matrix = matrix_string.scan(/\d+/).map(&:to_i)
  end

  def row_num
    @matrix.length > 6 ? @matrix.length/3 : 2
  end

  def column_num
    @matrix.length/row_num
  end

  def rows
    @matrix.each_slice(column_num).to_a
  end

  def columns
    rows.transpose
  end

end
