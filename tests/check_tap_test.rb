# frozen_string_literal: true

require "minitest/autorun"
load File.expand_path("../bin/check-tap", __dir__)

class CheckTapTest < Minitest::Test
  README = <<~MARKDOWN
    | [vacuum](https://example.com/vacuum) | `vacuum`, `s3-to-vacuum` | `scan` | Inventory |
    brew install cmdrvl/tap/{vacuum}
  MARKDOWN
  FORMULAE = { "vacuum" => ["s3-to-vacuum", "vacuum"] }.freeze
  ALIASES = { "scan" => "vacuum" }.freeze

  def test_accepts_secondary_binary_and_alias
    TapCheck.check(README, FORMULAE, ALIASES)
  end

  def test_rejects_missing_secondary_binary
    assert_raises(TapCheck::Error) { TapCheck.check(README.sub(", `s3-to-vacuum`", ""), FORMULAE, ALIASES) }
  end

  def test_rejects_undocumented_formula
    assert_raises(TapCheck::Error) { TapCheck.check(README, FORMULAE.merge("veil" => ["veil"]), ALIASES) }
  end

  def test_rejects_duplicate_table_row
    assert_raises(TapCheck::Error) { TapCheck.check(README + README.lines.first, FORMULAE, ALIASES) }
  end

  def test_rejects_wrong_alias
    assert_raises(TapCheck::Error) { TapCheck.check(README, FORMULAE, { "other" => "vacuum" }) }
  end

  def test_rejects_unknown_install_formula_in_brace_expansion
    assert_raises(TapCheck::Error) { TapCheck.check(README.sub("{vacuum}", "{vacuum,typo}"), FORMULAE, ALIASES) }
  end

  def test_rejects_formula_missing_from_install_commands
    assert_raises(TapCheck::Error) { TapCheck.check(README.sub(/^brew install.*\n/, ""), FORMULAE, ALIASES) }
  end

  def test_accepts_multiple_literal_install_entries
    source = "class Vacuum\n  def install\n    bin.install \"vacuum\"\n    bin.install \"s3-to-vacuum\"\n  end\nend\n"
    assert_equal FORMULAE["vacuum"], TapCheck.binaries("vacuum", source)
  end

  def test_rejects_install_patterns_it_cannot_check
    source = "class Vacuum\n  def install\n    bin.install Dir['*']\n  end\nend\n"
    assert_raises(TapCheck::Error) { TapCheck.binaries("vacuum", source) }
  end

  def test_rejects_invalid_ruby
    assert_raises(TapCheck::Error) { TapCheck.binaries("vacuum", "class Vacuum\n") }
  end
end
