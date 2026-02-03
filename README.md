# Julia Codespace Template

Template para fácil instanciação de um Codespace com Julia 1.6.4

## Como começar
- Clique no botão verde `Create codespace`.
- O Codespace (online vscode editor) será executado. Agora você pode usar Julia.
- Após instanciação e carregamento do Codespace experimente executar o seguintes comandos no terminal do VS code online:
  - julia --version (para ver a versão do Julia, que deve ser 1.11)
  - julia helloWorld.jl (que deve rodar um hello world básico com sucesso e imprimir no console)

## Como funciona o Codespaces?
- Você pode escrever um script de setup do Julia em  [.devcontainer.json](.devcontainer.json)
- O Codespace usa esse script para inicializar uma instancia de VM.
- Você pode obter um script igual a este aqui: [script](https://docs.github.com/en/codespaces/setting-up-your-project-for-codespaces/setting-up-your-project-for-codespaces).
