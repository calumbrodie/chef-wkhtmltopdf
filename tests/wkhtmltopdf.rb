describe package('wkhtmltox') do
  it { should be_installed }
end

describe 'runtime is available' do
  it 'has wkhtmltopdf' do
    expect(command('/usr/local/bin/wkhtmltopdf -V').exit_status).to eq(0)
  end
end
