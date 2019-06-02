require_relative '../lib/app.rb'

describe App do
  it 'processes a web server log' do
    expected = 
      [
        {:page=>"/about", :page_views=>4},
        {:page=>"/home", :page_views=>3},
        {:page=>"/about/2", :page_views=>3},
        {:page=>"/contact", :page_views=>2},
        {:page=>"/help_page/1", :page_views=>1}
      ],
      [
        {:page=>"/home", :unique_views=>3},
        {:page=>"/about/2", :unique_views=>3},
        {:page=>"/about", :unique_views=>2},
        {:page=>"/contact", :unique_views=>2},
        {:page=>"/help_page/1", :unique_views=>1}
      ]

    expect(Printer).to receive(:print).with(expected)

    App.process('./spec/fixtures/webserver_fixture.log')
  end
end

