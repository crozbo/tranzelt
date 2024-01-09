# Tranzelt

[translate-shell](https://github.com/soimort/translate-shell)+[zellij](https://github.com/zellij-org/zellij) in container

## Warrning

* this is just build for my usage, but there is plan to implement languages selection
* currently this automaticaly select hr:en and en:hr for `translate-shell`, you can modify `zellij/config/layouts/translate.kdl` file for other languages

## Build

* use `Continerfile` with `podman` or `buildah` to build container image
* zellij directorium contains a config files that will be coppied to container, there is predefined layout
* create/run container with `podman` or other container engine

## Usage

* `tranzelt` just use a `zellij` as container entry point, so all features of `zellij`, navigations, panes, tabs, etc. is available
* this automaticaly start `zellij` with with predefined layout, two interactive `translate-shell` panes, lang1->lang2 and lang2->lang1, and if you open new pane with `Alt+n` it will opened in horzontal split with height 25%, it's intended to be used for plain `translate-shell`, but it is just shell
* exiting `zellij` will exit container

* this not handle container images or running containers, any artifacts from building and runing containers is on user to manage


## Todo

- [ ] Container ENV variable for languages, container image will be build with those languages as default
- [ ] language selection with `zellij`
- [ ] files translate

* Note: `zellij` have systems of plugins, there is possibility for better integration with `translate-shell`, need to investiagate how to do it

## License

MIT
