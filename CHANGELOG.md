# Changelog

## [1.0.5](https://github.com/straddle-build/straddle-ruby/compare/v1.0.4...v1.0.5) (2026-10-07)


### Documentation

* refresh Ruby SDK quickstart and examples ([#4](https://github.com/straddle-build/straddle-ruby/issues/4)) ([ea6875a](https://github.com/straddle-build/straddle-ruby/commit/ea6875a7413774b108ad2d092d740b95a8e142d8))

## [1.0.4](https://github.com/straddle-build/straddle-ruby/compare/v1.0.0...v1.0.4) (2026-09-13)


### ⚠ BREAKING CHANGES

* **api:** 16 breaking changes to the SDK surface.
    - Response content type of `bridge.createBankAccountPaykey` changed from `text/plain` to `application/json`.
    - `400` error response of `bridge.createBankAccountPaykey` changed from `error_response` to `error_response`.
    - Response content type of `customers.create` changed from `text/plain` to `application/json`.
    - `400` error response of `customers.create` changed from `error_response` to `error_response`.
    - Response content type of `charges.create` changed from `text/plain` to `application/json`.
    - `400` error response of `charges.create` changed from `error_response` to `error_response`.
    - Response content type of `payouts.create` changed from `text/plain` to `application/json`.
    - `400` error response of `payouts.create` changed from `error_response` to `error_response`.
    - Property `payout.created_at` is now required.
    - Property `payout.created_at` type changed from `string<date-time> | null` to `string<date-time>`.
    - Property `payout.updated_at` is now required.
    - Property `payout.updated_at` type changed from `string<date-time> | null` to `string<date-time>`.
    - Property `unmasked_payout.created_at` is now required.
    - Property `unmasked_payout.created_at` type changed from `string<date-time> | null` to `string<date-time>`.
    - Property `unmasked_payout.updated_at` is now required.
    - Property `unmasked_payout.updated_at` type changed from `string<date-time> | null` to `string<date-time>`.
* **api:** 4 breaking changes to the SDK surface.
    - Property `embed_error_response.data` type changed from `unknown | null` to `unknown`.
    - Schema `customer_address` shape changed.
    - Schema `unmasked_compliance_profile` shape changed.
    - Schema `compliance_profile` shape changed.

### Features

* **api:** update property embed_error_response.data (+3 more changes) ([5831731](https://github.com/straddle-build/straddle-ruby/commit/58317314c523b64a34c612b42865ca6f1a280273))
* **api:** update SDK surface (17 changes) ([240b1ad](https://github.com/straddle-build/straddle-ruby/commit/240b1adb0d63f7970583a176f74edfd59ac32b9c))


### Chores

* release 1.0.3 ([b66c899](https://github.com/straddle-build/straddle-ruby/commit/b66c899c3526406bc2c2aac0971005414c93e1f4))
* release 1.0.3 ([79f8e16](https://github.com/straddle-build/straddle-ruby/commit/79f8e164d9230f65874ac8b2c270899f76a0e184))
* release 1.0.4 ([da97155](https://github.com/straddle-build/straddle-ruby/commit/da97155f00da180a14f6f2ac3d73434a477c0a31))
* release 1.0.4 ([541ab1e](https://github.com/straddle-build/straddle-ruby/commit/541ab1ee99434518fc7ba6d303a7398c44d52dd6))

## [1.0.0](https://github.com/straddle-build/straddle-ruby/compare/v0.1.0...v1.0.0) (2026-09-02)


### Features

* **api:** initial SDK generation ([3b9b199](https://github.com/straddle-build/straddle-ruby/commit/3b9b199fb126e76887389793ecf4ce30e5bb7ad1))


### Chores

* **api:** update generated SDK content ([de59388](https://github.com/straddle-build/straddle-ruby/commit/de59388002ac56f2cad30e0759b8f20a67b6eeee))
* release 1.0.0 ([43a7af7](https://github.com/straddle-build/straddle-ruby/commit/43a7af767aaa4c8bd9d248500dad748a0be6874b))
* release 1.0.0 ([3a93097](https://github.com/straddle-build/straddle-ruby/commit/3a93097e772603de73131d75144df1f3349da315))
