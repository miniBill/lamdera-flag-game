YARN_RUN = node_modules/.bin/travelm-agency

.PHONY:all
all: generated/AspectRatios.elm src/Translations.elm

src/Translations.elm: $(wildcard translations/*.ftl) $(YARN_RUN)
	yarn travelm-agency --inline --i18n_arg_first translations

$(YARN_RUN): package.json yarn.lock
	yarn && touch $@

codegen/Gen/Basics.elm: codegen/elm.codegen.json $(YARN_RUN)
	yarn elm-codegen install

generated/AspectRatios.elm: codegen/Generate.elm codegen/elm.json codegen/Gen/Basics.elm $(YARN_RUN)
	yarn elm-codegen run --flags-from public
