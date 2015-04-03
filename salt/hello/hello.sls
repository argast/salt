hello-image:
  docker.pulled:
    - name: argast/scala-di:latest
    - force: true

hello-container:
  docker.installed:
    - image: argast/scala-di:latest
    - watch:
      - docker: hello-image

hello:
  docker.running:
    - container: hello-container
    - watch:
      - docker: hello-container
        