require 'serverspec'

# Required by serverspec
set :backend, :exec

describe "Php fpm Daemon" do

  it "is listening on port 9000" do
    expect(port(9000)).to be_listening
  end

  it "has a running service of php-fpm" do
    expect(service("php-fpm")).to be_running
  end

end
