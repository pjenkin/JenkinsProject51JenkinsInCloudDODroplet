# 51 setting up Jenkins in the cloud (Digital Ocean)
Vagrant.configure('2') do |config|

config.vm.define "jenkins" do |jenkins|
  config.vm.provider :digital_ocean do |provider, override|
    override.ssh.private_key_path = 'id_rsa'
    override.vm.box = 'digital_ocean'
    provider.hostname = 'jenkins'
    provider.size = '1GB'
    # provider.client_id = 'YOURCLIENTKEY' # not needed?
    provider.image = 'ubuntu-16-04-x64'   # changed in v2 from 'Ubuntu 16.04 x64'?
    provider.api_key = '743e105ce51485699c5d22192bb2a8dd1e39e3ef80e100de453edcec0732bae1' # from API/Tooks&Keys page
    provider.token = '743e105ce51485699c5d22192bb2a8dd1e39e3ef80e100de453edcec0732bae1'   # API token still https://www.digitalocean.com/community/questions/vagrant-does-does-not-work-with-do
    provider.region = 'FRA1'  # in video, not in article - region is unavailable for 'AMS2'
  end
  config.vm.provision :shell, :path => "jenkins-installer.sh"
end
end

# from https://discoposse.com/2014/05/17/deploying-a-jenkins-server-on-digital-ocean-with-vagrant/