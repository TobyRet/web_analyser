require_relative('../lib/reader')

describe Reader do
  it 'does something'do
    reader = Reader.new('./spec/fixtures/webserver_fixture.log')
    read_lines = reader.run

    expect(read_lines.first).to eq("/contact 158.577.775.616\n")
  end
end
