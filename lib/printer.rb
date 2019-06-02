# frozen_string_literal: true
class Printer
  def self.print(logs)
    logs.each { |log| p log }
  end
end
