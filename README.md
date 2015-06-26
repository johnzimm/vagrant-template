= Vagrant Test Template

Fork this repository to generate a local test server.

== Vagrant Notes

Notes assume you are using Windows and want to use virtualbox.

See http://www.chocolatey.org for details on installing the Chocolatey package manager.

On Windows:

    chocolatey install -y vagrant virtualbox virtualbox.extensions
    vagrant plugin install vagrant-hostmanager
    vagrant up
    vagrant ssh

