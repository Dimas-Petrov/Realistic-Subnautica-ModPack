name: Deploy MkDocs site to Pages
on:
  push:
    branches: ["main"] # ← Убедитесь, что ваша главная ветка называется "main"
  workflow_dispatch:   # ← Позволяет запускать публикацию вручную из интерфейса GitHub
permissions:
  contents: write
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-python@v5
        with:
          python-version: 3.x
      - name: Install dependencies
        run: pip install mkdocs-material
      - name: Build and Deploy
        run: mkdocs gh-deploy --force