# frozen_string_literal: true
class Reader
  attr_reader :file_path

  def initialize(file_path)
    @file_path = file_path
  end

  def run
    lines = []

    File.readlines(file_path) do |line|
      lines.push(line)
    end
  end
end
