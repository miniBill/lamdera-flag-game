BUN_RUN = node_modules/.bin/travelm-agency

.PHONY:all
all: generated/AspectRatios.elm src/Translations.elm

src/Translations.elm: $(wildcard translations/*.ftl) $(BUN_RUN)
	bun run travelm-agency --inline translations

$(BUN_RUN): package.json bun.lock
	bun install && touch $@

codegen/Gen/Basics.elm: codegen/elm.codegen.json $(BUN_RUN)
	bun run elm-codegen install

generated/AspectRatios.elm: codegen/GenerateAspectRatios.elm codegen/elm.json codegen/Gen/Basics.elm $(BUN_RUN)
	bun run elm-codegen run --flags-from media $<

build/cldr-json-modern.zip:
	mkdir -p build
	curl -L https://github.com/unicode-org/cldr-json/releases/download/48.2.0/cldr-48.2.0-json-full.zip -o $@

build/cldr-core/availableLocales.json: build/cldr-json-modern.zip
	(cd build; unzip cldr-json-modern.zip)
	touch $@
