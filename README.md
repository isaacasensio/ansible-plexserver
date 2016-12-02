# ansible-plexserver

Ansible playbook to setup a multimedia server in Centos with the following features:

  - Plex Media Server [https://www.plex.tv/](https://www.plex.tv/).
  - BitTorrent client [https://transmissionbt.com/](https://transmissionbt.com/)
  - Download torrent files automatically using [http://flexget.com/](http://flexget.com/)

## Testing

You can test everything with Vagrant. Just run the following command to setup and provision the whole environment:

    vagrant up

If you want to apply any modification to the default configuration just re-provision your VM running:

    vagrant provision

If you are not interested anymore, just run the following command to remove the VM and save some space.

    vagrant destroy

## Installation

So you finally decide to install this playbook, great!. Before running your Ansible playbook against your machine you need to:

 - modify your *inventory/all* file to include your ip address.
 - run Ansible playbook:


      ansible-playbook -i inventory/all site.yml -K

## Plex Media Server

Plex should be accessible at http://your_ip:32400/web/index.html

### Plugins/Channels/Bundles

You basically have two options:

  - Install plugins from a git repo such as [Plex plug-ins git repo](https://github.com/plexinc-plugins).
  - Copying a zip bundle inside the "*files*" folder in plex-server role.

#### Git repo
Add plugins needed to *git_plex_plugins* property in plex-server role.

    git_plex_plugins:
      - "https://github.com/plexinc-plugins/ABC.bundle.git"
      - "https://github.com/plexinc-plugins/Vimeo.bundle.git"

#### Zip bundle
Copy your zip bundle inside the "*files*" folder in the plex-server role, and ansible will install it for you.

## Transmission

Transmission BitTorrent web client should be accessible at http://your_ip:9091/transmission

- Username: transmission
- Password: transmission

## Flexget
