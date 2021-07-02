plex_docker_service_installed:
  file.managed:
    - name: /etc/systemd/system/plex-docker.service
    - source: salt://plex-docker/files/plex-docker.service
    - template: jinja

  module.run:
    - name: systemd_service.systemctl_reload
    - onchanges:
      - file: plex_docker_service_installed

plex_docker_service_running:
  service.running:
    - name: plex-docker
    - enable: True
    - watch:
      - module: plex_docker_service_installed
