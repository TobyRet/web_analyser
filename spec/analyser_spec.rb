require_relative '../lib/analyser'
require_relative '../lib/line'

describe Analyser do
  let(:parsed_log) {
    [
      Line.new('/about', '123.456.789'),
      Line.new('/about', '123.456.789')
    ]
  }

  let(:subject) { Analyser }

  it 'calculates page views' do
    expected_result = [
      {
        page: '/about',
        page_views: 2
      }
    ]

    expect(subject.page_views(parsed_log)).to eq(expected_result)
  end

  it 'calculates unique views' do
    expected_result = [
      {
        page: '/about',
        unique_views: 1
      }
    ]

    expect(subject.unique_views(parsed_log)).to eq(expected_result)
  end
end

