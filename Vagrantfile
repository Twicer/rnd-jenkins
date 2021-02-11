Vagrant.configure("2") do |config|
    config.vm.provision :shell, inline: "echo Hello Master! It is time to start provision!"
    config.vm.synced_folder ".", "/vagrant", disabled: false, rsync__exclude: ['win10-agent']

    config.vm.define "centos" do |jenkins|
        jenkins.vm.box = "centos/7"

        jenkins.vm.provision :shell, privileged: false, path: "scripts/provision-centos.sh"

        jenkins.vm.provider "virtualbox" do |vb|
            vb.name = "v-centos"
            vb.gui = false
            vb.memory = 4192
            vb.cpus = 4
        end
    end

    config.vm.define "jenkins" do |jenkins|
        jenkins.vm.box = "centos/7"

        jenkins.vm.provision :shell, privileged: false, path: "scripts/provision-jenkins.sh"

        jenkins.vm.provider "virtualbox" do |vb|
            vb.name = "v-jenkins"
            vb.gui = false
            vb.memory = 4192
        end
    end

    config.vm.define "agent-w10" do |jenkins|
        jenkins.vm.box = "win10-agent"
        jenkins.ssh.private_key_path = "~/.ssh/id_rsa.pub"

        jenkins.vm.provider "virtualbox" do |vb|
            vb.name = "v-jenkins-agent-win10"
            vb.gui = true
            vb.memory = 8192
        end
    end

    config.vm.define "agent-u20" do |jenkins|
        jenkins.vm.box = "generic/ubuntu2004"

        jenkins.vm.provision :shell, privileged: false, path: "scripts/provision-jenkins-agent.sh"

        jenkins.vm.provider "virtualbox" do |vb|
            vb.name = "v-jenkins-agent-u20"
            vb.gui = false
            vb.memory = 4192
        end
    end
end