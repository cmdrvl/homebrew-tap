# homebrew-tap

Homebrew formulae for [CMD+RVL](https://github.com/cmdrvl) tools.

## Install

```bash
brew tap cmdrvl/tap
# Core comparison, validation, and boundary tools
brew install cmdrvl/tap/{shape,rvl,verify,cmdrvl-hash,cmdrvl-benchmark,assess,veil,airlock}
```

Full set:

```bash
brew install cmdrvl/tap/{airlock,assess,canon,cmdrvl-benchmark,cmdrvl-hash,decoding,fingerprint,lock,pack,profile,redline,rvl,shape,twinning,vacuum,veil,verify}
```

These formula names were checked against `Formula/*.rb`, `brew info`, and
`brew install --dry-run` on macOS x86_64. These checks resolve the commands;
they do not install packages or verify every release archive on every platform.

`cmdrvl-hash` installs the `hashbytes` command. `cmdrvl-benchmark` installs the
`benchmark` command. The `hash` and `benchmark` tap aliases accept older install
commands; use the canonical formula names above in new instructions. Aliases do
not rename the installed binaries. `vacuum` also installs `s3-to-vacuum`, and
`twinning` also installs `twinning-mcp`.

## Available Formulae

| Formula | Installed binaries | Tap aliases | Description |
|---------|--------------------|-------------|-------------|
| [airlock](https://github.com/cmdrvl/airlock) | `airlock` | — | Prove what crossed the model boundary |
| [assess](https://github.com/cmdrvl/assess) | `assess` | — | Deterministic decision classification over a spine evidence bundle |
| [canon](https://github.com/cmdrvl/canon) | `canon` | — | Resolve messy identifiers to canonical IDs using versioned registries |
| [cmdrvl-benchmark](https://github.com/cmdrvl/benchmark) | `benchmark` | `benchmark` | Gold-set scoring for extraction pipelines |
| [cmdrvl-hash](https://github.com/cmdrvl/hash) | `hashbytes` | `hash` | Streaming content hashing for JSONL manifest records |
| [decoding](https://github.com/cmdrvl/decoding) | `decoding` | — | Deterministic convergence engine for legacy-system archaeology |
| [fingerprint](https://github.com/cmdrvl/fingerprint) | `fingerprint` | — | Determine whether an artifact matches a known template |
| [lock](https://github.com/cmdrvl/lock) | `lock` | — | Pin artifacts, fingerprints, and tool versions into a self-hashed dataset lockfile |
| [pack](https://github.com/cmdrvl/pack) | `pack` | — | Seal artifacts into immutable, self-verifiable evidence packs |
| [profile](https://github.com/cmdrvl/profile) | `profile` | — | Create, validate, and freeze column-scoping profiles for report tools |
| [redline](https://github.com/cmdrvl/redline) | `redline` | — | Diff two document versions and report every change as exact byte spans |
| [rvl](https://github.com/cmdrvl/rvl) | `rvl` | — | Reveal the smallest set of numeric changes that explain what actually changed |
| [shape](https://github.com/cmdrvl/shape) | `shape` | — | Structural comparability gate for CSV datasets |
| [twinning](https://github.com/cmdrvl/twinning) | `twinning`, `twinning-mcp` | — | Runnable database and API twins with an MCP server |
| [vacuum](https://github.com/cmdrvl/vacuum) | `vacuum`, `s3-to-vacuum` | — | Inventory artifacts into deterministic JSONL manifests |
| [veil](https://github.com/cmdrvl/veil) | `veil` | — | Data exfiltration guard for AI coding agents |
| [verify](https://github.com/cmdrvl/verify) | `verify` | — | Deterministic constraint evaluation for the epistemic spine |

## Maintaining the tap

Run `ruby bin/check-tap` and `ruby tests/check_tap_test.rb` before pushing.
CI checks Ruby syntax, installed binary names, aliases, README table coverage,
and the formula names in the install examples. The checker accepts literal
`bin.install` entries; extend it explicitly if a formula needs another install
pattern.
