require_relative('../lib/parser')

describe Parser do
  it 'parses a server log' do
    read_lines = [
      "/page_a 123.456.789",
      "/page_b 789.456.789",
    ]
    parser = Parser.new(read_lines)
    parsed_lines = parser.run

    #expect(parsed_lines.length).to eq(2)

    #first_line = parsed_lines.first

    #expect(first_line).to be_kind_of(Line)
    #expect(first_line.page).to eq('/page_a')
    #expect(first_line.ip_address).to eq('123.456.789')
  end
end
