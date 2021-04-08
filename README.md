# How to make changes in diagrams

## Online with GitLab editor

* Open `*.md` file in GitLab
* Click the `Edit`
* Make your changes (you can use `Preview` to see how the diagram will look like)
* Click `Commit changes`

## Offline with IntelliJ

* Install the [PlantUML plugin](https://plugins.jetbrains.com/plugin/7017-plantuml-integration) for IntelliJ
* Clone the repo and install git hook: 
```bash
git clone https://gitlab.com/reliable-and-scalable-biskup/diagrams.git
cd diagrams
./install-hook.sh
```

* Edit `*.puml` files placed in `src` directory
* Commit changes as usual
```bash
git add .
git commit -m "Commit message"
```
* The `*.md` files will be updated automatically and committed into the repo
* Push your changes to remote repository