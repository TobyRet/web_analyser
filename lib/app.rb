require_relative './reader'
require_relative './parser'
require_relative './analyser'
require_relative './printer'

class App
  def self.run
    process("./logs/webserver.log")
  end

  def self.process(log)
    read_log = Reader.new(log).run
    parsed_log = Parser.new(read_log).run

    log_grouped_by_page_views = Analyser.page_views(parsed_log)
    log_grouped_by_unique_views = Analyser.unique_views(parsed_log)

    Printer.print(
      [
        log_grouped_by_page_views,
        log_grouped_by_unique_views
      ]
    )
  end
end

