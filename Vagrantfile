Vagrant.configure("2") do |config|
    config.vm.provision :shell, inline: "echo Hello Master! It is time to start provision!"
    config.vm.synced_folder ".", "/vagrant", disabled: false

    config.vm.define "jenkins" do |jenkins|
        jenkins.vm.box = "generic/ubuntu2004"

        jenkins.vm.provision :shell, privileged: false, path: "scripts/provision-jenkins.sh"

        jenkins.vm.provider "virtualbox" do |vb|
            vb.name = "v-jenkins"
            vb.gui = false
            vb.memory = 4192
        end
    end

    config.vm.define "jenkins-agent" do |jenkins|
        jenkins.vm.box = "generic/ubuntu2004"

        jenkins.vm.provision :shell, path: "scripts/provision-jenkins-agent.sh"

        jenkins.vm.provider "virtualbox" do |vb|
            vb.name = "v-jenkins-agent"
            vb.gui = false
            vb.memory = 4192
        end
    end
end