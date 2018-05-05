{% from "plex-docker/map.jinja" import plex with context %}

plex_docker_dir_config:
  file.directory:
    - name: {{ plex.config }}
    - makedirs: True

{% if plex.transcode %}
plex_docker_dir_transcode:
  file.directory:
    - name: {{ plex.transcode }}
    - makedirs: True
{% endif %}
