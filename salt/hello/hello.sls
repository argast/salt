hello-image:
  docker.pulled:
    - name: argast/scala-di:1.0
    - force: true

hello-container:
  docker.installed:
    - image: argast/scala-di:1.0
    - watch:
      - docker: hello-image

hello:
  docker.running:
    - container: hello-container
    - watch:
      - docker: hello-container
        