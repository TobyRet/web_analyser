# frozen_string_literal: true
require_relative './line'

class Parser
  attr_reader :lines

  def initialize(lines)
    @lines = lines
  end

  def run
    @lines.map do |line| 
      split_line = line.split(' ')
      Line.new(split_line.first, split_line.last)
    end
  end
end
