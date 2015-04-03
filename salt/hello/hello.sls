hello-image:
  docker.pulled:
    - name: argast/scala-di
    - tag: 1.0
    - force: true

hello-container:
  docker.installed:
    - image: hello-image
    - watch:
      - docker: hello-image

hello:
  docker.running:
    - container: hello-container
    - watch:
      - docker: hello-container
        