require 'pry'

class String

  def sentence?
    self.end_with?('.')
    # binding.pry
  end

  def question?
    self.end_with?('?')
    # binding.pry
  end

  def exclamation?
    self.end_with?('!')
    # binding.pry
  end

  def count_sentences
    arr = self.split(/[.?!]/)
    arr.each do |line|
      if line == ''
        arr.delete(line)
      end
    end
    arr.length
  end
end