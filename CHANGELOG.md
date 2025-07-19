# Changelog

## [0.4.4](https://github.com/Plant-Coach/plant_coach_weather_api/compare/v0.4.3...v0.4.4) (2025-07-19)


### Bug Fixes

* prevent excessive build/push runs ([0d26fe5](https://github.com/Plant-Coach/plant_coach_weather_api/commit/0d26fe5f73c2979a8a0f98f7ae79a5ed8e28230e))

## [0.4.3](https://github.com/Plant-Coach/plant_coach_weather_api/compare/v0.4.2...v0.4.3) (2025-07-19)


### Bug Fixes

* resolve application starting issue ([#137](https://github.com/Plant-Coach/plant_coach_weather_api/issues/137)) ([87af79f](https://github.com/Plant-Coach/plant_coach_weather_api/commit/87af79f4275c5fe636dfe09497e1ce8b67e1c989))

## [0.4.2](https://github.com/Plant-Coach/plant_coach_weather_api/compare/v0.4.1...v0.4.2) (2025-07-19)


### Bug Fixes

* **logs:** remove health and ready checks ([#133](https://github.com/Plant-Coach/plant_coach_weather_api/issues/133)) ([605d113](https://github.com/Plant-Coach/plant_coach_weather_api/commit/605d1137f3da6d449387559555d934680daf5379))

## [0.4.1](https://github.com/Plant-Coach/plant_coach_weather_api/compare/v0.4.0...v0.4.1) (2025-07-18)


### Bug Fixes

* add multi support for docker image ([#127](https://github.com/Plant-Coach/plant_coach_weather_api/issues/127)) ([68e9363](https://github.com/Plant-Coach/plant_coach_weather_api/commit/68e9363ab8f883b227405f4f22083baa5bf3ad31))
* fix k8s missing logs ([#131](https://github.com/Plant-Coach/plant_coach_weather_api/issues/131)) ([56af602](https://github.com/Plant-Coach/plant_coach_weather_api/commit/56af602b2da3e0b65b0531520d75ea211f62261f))

## [0.4.0](https://github.com/Plant-Coach/plant_coach_weather_api/compare/v0.3.0...v0.4.0) (2025-06-28)


### Features

* handle exceptions from frost date service ([#123](https://github.com/Plant-Coach/plant_coach_weather_api/issues/123)) ([86255eb](https://github.com/Plant-Coach/plant_coach_weather_api/commit/86255ebaaac844c083be17c0f55ceab992b938fe))

## [0.3.0](https://github.com/Plant-Coach/plant_coach_weather_api/compare/v0.2.0...v0.3.0) (2025-06-28)


### Features

* add kubernetes health probe setup ([#104](https://github.com/Plant-Coach/plant_coach_weather_api/issues/104)) ([b582544](https://github.com/Plant-Coach/plant_coach_weather_api/commit/b582544791688a9540ac414b4f0a5de7bc66c08a))
* bump version after removing rc release labeling ([#115](https://github.com/Plant-Coach/plant_coach_weather_api/issues/115)) ([c31657d](https://github.com/Plant-Coach/plant_coach_weather_api/commit/c31657db80677baa9ed96b1bf11162c2fc577798))
* Consume an endpoint that provides frost date information ([410ca61](https://github.com/Plant-Coach/plant_coach_weather_api/commit/410ca61e25c1369167923a7989c9cf34125154e4))
* Consume api that provides a fall frost date ([2c4f8e3](https://github.com/Plant-Coach/plant_coach_weather_api/commit/2c4f8e3ec9f52d96420eeca0b8cca660d80f4637))
* Create frost date endpoint ([e3812ba](https://github.com/Plant-Coach/plant_coach_weather_api/commit/e3812ba5fbad132780534b482748fd76338dce0b))
* **dummy test commit:** testing the automation ([#94](https://github.com/Plant-Coach/plant_coach_weather_api/issues/94)) ([ec4797a](https://github.com/Plant-Coach/plant_coach_weather_api/commit/ec4797a3a38dd9725eff9b7f601acc8f5cb36d7b))
* Expose new weather forecast endpoint ([731b7cd](https://github.com/Plant-Coach/plant_coach_weather_api/commit/731b7cde7efe5b838830854a9ad6586dd441e739))
* **release please:** add release please and set first version ([#96](https://github.com/Plant-Coach/plant_coach_weather_api/issues/96)) ([1692b45](https://github.com/Plant-Coach/plant_coach_weather_api/commit/1692b454d6dbd9cd0381be1679962c3a7ce7ea40))


### Bug Fixes

* add missing 2nd config ([#58](https://github.com/Plant-Coach/plant_coach_weather_api/issues/58)) ([97f16af](https://github.com/Plant-Coach/plant_coach_weather_api/commit/97f16af9725f57f418e81454ee76815a6a699e83))
* **dummy commit:** testing release-please automation ([#92](https://github.com/Plant-Coach/plant_coach_weather_api/issues/92)) ([7e05903](https://github.com/Plant-Coach/plant_coach_weather_api/commit/7e05903d9c05939f12e4dd9eaa785647969436ba))
* **forecast test:** remove erroneous float assertions ([#100](https://github.com/Plant-Coach/plant_coach_weather_api/issues/100)) ([ea05241](https://github.com/Plant-Coach/plant_coach_weather_api/commit/ea0524104ada35a8534f2866e0a0fdb40c1c29e4))
* **release-please ci:** add missing reference to configs ([#64](https://github.com/Plant-Coach/plant_coach_weather_api/issues/64)) ([1ba1471](https://github.com/Plant-Coach/plant_coach_weather_api/commit/1ba14713db7027b433353d23488a5f30784fb13e))
* **release-please ci:** fix release-type ([#68](https://github.com/Plant-Coach/plant_coach_weather_api/issues/68)) ([f728c72](https://github.com/Plant-Coach/plant_coach_weather_api/commit/f728c722fe24524fe7db3dc2695d98d61cc27101))
* **release-please config:** add possibly missing package block ([#60](https://github.com/Plant-Coach/plant_coach_weather_api/issues/60)) ([07a255c](https://github.com/Plant-Coach/plant_coach_weather_api/commit/07a255cf1481d097676a423288456649fc5d3607))
* **release-please config:** modify syntax to force starter version ([#47](https://github.com/Plant-Coach/plant_coach_weather_api/issues/47)) ([ae03f7a](https://github.com/Plant-Coach/plant_coach_weather_api/commit/ae03f7a15a7ef6d16040bcbd20e7de763cef5e88))
* **release-please config:** move version number ([#56](https://github.com/Plant-Coach/plant_coach_weather_api/issues/56)) ([698c027](https://github.com/Plant-Coach/plant_coach_weather_api/commit/698c0277f40fa4d7daed5a38c50ce084e723a5f5))
* **release-please config:** nest config in package path ([#62](https://github.com/Plant-Coach/plant_coach_weather_api/issues/62)) ([7ac4977](https://github.com/Plant-Coach/plant_coach_weather_api/commit/7ac4977c335146e011905d306af58a070ddf48c0))
* **release-please config:** reformat again ([#66](https://github.com/Plant-Coach/plant_coach_weather_api/issues/66)) ([e01bcd4](https://github.com/Plant-Coach/plant_coach_weather_api/commit/e01bcd4b7e6140bbb1ea7a9345b7a6eccc3859ca))
* **release-please config:** syntax fix ([#54](https://github.com/Plant-Coach/plant_coach_weather_api/issues/54)) ([8038ec8](https://github.com/Plant-Coach/plant_coach_weather_api/commit/8038ec8204a9c45e3798d09a1eab589fbf5a3866))
* **release-please config:** test the other prerelease options ([#49](https://github.com/Plant-Coach/plant_coach_weather_api/issues/49)) ([499db75](https://github.com/Plant-Coach/plant_coach_weather_api/commit/499db757b09451179a4af95bc749d297a4527549))
* **release-please config:** try additional flags ([e8440b0](https://github.com/Plant-Coach/plant_coach_weather_api/commit/e8440b0cbbfc0b67cd1ab8d3e769b72358510338))
* **release-please config:** try new format ([#52](https://github.com/Plant-Coach/plant_coach_weather_api/issues/52)) ([4c07b80](https://github.com/Plant-Coach/plant_coach_weather_api/commit/4c07b809e0230033c38458de49255edbe63ad73a))
* **release-please:** force higher version for testing ([#81](https://github.com/Plant-Coach/plant_coach_weather_api/issues/81)) ([48a9007](https://github.com/Plant-Coach/plant_coach_weather_api/commit/48a90079e8c7149e8fdc9c9dabce650220274e08))
* **release-please:** test another config change ([#79](https://github.com/Plant-Coach/plant_coach_weather_api/issues/79)) ([3924c95](https://github.com/Plant-Coach/plant_coach_weather_api/commit/3924c9506b98da4ba0e4752428de449fc326a1d4))
* remove rc label for version bump ([#117](https://github.com/Plant-Coach/plant_coach_weather_api/issues/117)) ([c90f529](https://github.com/Plant-Coach/plant_coach_weather_api/commit/c90f529921b624dd953ea8a1eca1bfbc6739c4b3))
* **request spec:** removed incorrect Float assertion ([#38](https://github.com/Plant-Coach/plant_coach_weather_api/issues/38)) ([0ee9f3e](https://github.com/Plant-Coach/plant_coach_weather_api/commit/0ee9f3e314213b5f30df1a8028afc52a02e9da59))
* Resolve release-please not recognizing manifest and config ([#83](https://github.com/Plant-Coach/plant_coach_weather_api/issues/83)) ([4b215a7](https://github.com/Plant-Coach/plant_coach_weather_api/commit/4b215a7a93c2d97ee2cccbffb633c0f577e3190b))

## [0.2.0-rc.2](https://github.com/Plant-Coach/plant_coach_weather_api/compare/v0.2.0-rc.1...v0.2.0-rc.2) (2025-06-24)


### Features

* add kubernetes health probe setup ([#104](https://github.com/Plant-Coach/plant_coach_weather_api/issues/104)) ([b582544](https://github.com/Plant-Coach/plant_coach_weather_api/commit/b582544791688a9540ac414b4f0a5de7bc66c08a))

## [0.2.0-rc.1](https://github.com/Plant-Coach/plant_coach_weather_api/compare/v0.2.0-rc...v0.2.0-rc.1) (2025-06-24)


### Bug Fixes

* **forecast test:** remove erroneous float assertions ([#100](https://github.com/Plant-Coach/plant_coach_weather_api/issues/100)) ([ea05241](https://github.com/Plant-Coach/plant_coach_weather_api/commit/ea0524104ada35a8534f2866e0a0fdb40c1c29e4))

## [0.2.0-rc](https://github.com/Plant-Coach/plant_coach_weather_api/compare/v0.1.0...v0.2.0-rc) (2025-06-23)


### Features

* **release please:** add release please and set first version ([#96](https://github.com/Plant-Coach/plant_coach_weather_api/issues/96)) ([1692b45](https://github.com/Plant-Coach/plant_coach_weather_api/commit/1692b454d6dbd9cd0381be1679962c3a7ce7ea40))

## [0.2.0-rc.1](https://github.com/Plant-Coach/plant_coach_weather_api/compare/v0.1.1-rc.1...v0.2.0-rc.1) (2025-06-22)


### Features

* **dummy test commit:** testing the automation ([#94](https://github.com/Plant-Coach/plant_coach_weather_api/issues/94)) ([ec4797a](https://github.com/Plant-Coach/plant_coach_weather_api/commit/ec4797a3a38dd9725eff9b7f601acc8f5cb36d7b))

## [0.1.1-rc.1](https://github.com/Plant-Coach/plant_coach_weather_api/compare/v0.1.1-rc...v0.1.1-rc.1) (2025-06-22)


### Bug Fixes

* **dummy commit:** testing release-please automation ([#92](https://github.com/Plant-Coach/plant_coach_weather_api/issues/92)) ([7e05903](https://github.com/Plant-Coach/plant_coach_weather_api/commit/7e05903d9c05939f12e4dd9eaa785647969436ba))

## [0.1.1-rc](https://github.com/Plant-Coach/plant_coach_weather_api/compare/v0.1.0...v0.1.1-rc) (2025-06-22)


### Features

* Consume an endpoint that provides frost date information ([410ca61](https://github.com/Plant-Coach/plant_coach_weather_api/commit/410ca61e25c1369167923a7989c9cf34125154e4))
* Consume api that provides a fall frost date ([2c4f8e3](https://github.com/Plant-Coach/plant_coach_weather_api/commit/2c4f8e3ec9f52d96420eeca0b8cca660d80f4637))
* Create frost date endpoint ([e3812ba](https://github.com/Plant-Coach/plant_coach_weather_api/commit/e3812ba5fbad132780534b482748fd76338dce0b))
* Expose new weather forecast endpoint ([731b7cd](https://github.com/Plant-Coach/plant_coach_weather_api/commit/731b7cde7efe5b838830854a9ad6586dd441e739))


### Bug Fixes

* add missing 2nd config ([#58](https://github.com/Plant-Coach/plant_coach_weather_api/issues/58)) ([97f16af](https://github.com/Plant-Coach/plant_coach_weather_api/commit/97f16af9725f57f418e81454ee76815a6a699e83))
* **release-please ci:** add missing reference to configs ([#64](https://github.com/Plant-Coach/plant_coach_weather_api/issues/64)) ([1ba1471](https://github.com/Plant-Coach/plant_coach_weather_api/commit/1ba14713db7027b433353d23488a5f30784fb13e))
* **release-please ci:** fix release-type ([#68](https://github.com/Plant-Coach/plant_coach_weather_api/issues/68)) ([f728c72](https://github.com/Plant-Coach/plant_coach_weather_api/commit/f728c722fe24524fe7db3dc2695d98d61cc27101))
* **release-please config:** add possibly missing package block ([#60](https://github.com/Plant-Coach/plant_coach_weather_api/issues/60)) ([07a255c](https://github.com/Plant-Coach/plant_coach_weather_api/commit/07a255cf1481d097676a423288456649fc5d3607))
* **release-please config:** modify syntax to force starter version ([#47](https://github.com/Plant-Coach/plant_coach_weather_api/issues/47)) ([ae03f7a](https://github.com/Plant-Coach/plant_coach_weather_api/commit/ae03f7a15a7ef6d16040bcbd20e7de763cef5e88))
* **release-please config:** move version number ([#56](https://github.com/Plant-Coach/plant_coach_weather_api/issues/56)) ([698c027](https://github.com/Plant-Coach/plant_coach_weather_api/commit/698c0277f40fa4d7daed5a38c50ce084e723a5f5))
* **release-please config:** nest config in package path ([#62](https://github.com/Plant-Coach/plant_coach_weather_api/issues/62)) ([7ac4977](https://github.com/Plant-Coach/plant_coach_weather_api/commit/7ac4977c335146e011905d306af58a070ddf48c0))
* **release-please config:** reformat again ([#66](https://github.com/Plant-Coach/plant_coach_weather_api/issues/66)) ([e01bcd4](https://github.com/Plant-Coach/plant_coach_weather_api/commit/e01bcd4b7e6140bbb1ea7a9345b7a6eccc3859ca))
* **release-please config:** syntax fix ([#54](https://github.com/Plant-Coach/plant_coach_weather_api/issues/54)) ([8038ec8](https://github.com/Plant-Coach/plant_coach_weather_api/commit/8038ec8204a9c45e3798d09a1eab589fbf5a3866))
* **release-please config:** test the other prerelease options ([#49](https://github.com/Plant-Coach/plant_coach_weather_api/issues/49)) ([499db75](https://github.com/Plant-Coach/plant_coach_weather_api/commit/499db757b09451179a4af95bc749d297a4527549))
* **release-please config:** try additional flags ([e8440b0](https://github.com/Plant-Coach/plant_coach_weather_api/commit/e8440b0cbbfc0b67cd1ab8d3e769b72358510338))
* **release-please config:** try new format ([#52](https://github.com/Plant-Coach/plant_coach_weather_api/issues/52)) ([4c07b80](https://github.com/Plant-Coach/plant_coach_weather_api/commit/4c07b809e0230033c38458de49255edbe63ad73a))
* **release-please:** force higher version for testing ([#81](https://github.com/Plant-Coach/plant_coach_weather_api/issues/81)) ([48a9007](https://github.com/Plant-Coach/plant_coach_weather_api/commit/48a90079e8c7149e8fdc9c9dabce650220274e08))
* **release-please:** test another config change ([#79](https://github.com/Plant-Coach/plant_coach_weather_api/issues/79)) ([3924c95](https://github.com/Plant-Coach/plant_coach_weather_api/commit/3924c9506b98da4ba0e4752428de449fc326a1d4))
* **request spec:** removed incorrect Float assertion ([#38](https://github.com/Plant-Coach/plant_coach_weather_api/issues/38)) ([0ee9f3e](https://github.com/Plant-Coach/plant_coach_weather_api/commit/0ee9f3e314213b5f30df1a8028afc52a02e9da59))
* Resolve release-please not recognizing manifest and config ([#83](https://github.com/Plant-Coach/plant_coach_weather_api/issues/83)) ([4b215a7](https://github.com/Plant-Coach/plant_coach_weather_api/commit/4b215a7a93c2d97ee2cccbffb633c0f577e3190b))
