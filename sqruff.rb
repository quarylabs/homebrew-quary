# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  depends_on :macos
  if Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.0.5/sqruff-darwin-x86_64.tar.gz"
    sha256 "b297526790f3fb8ec73e62d34d24596aa49efcb067aadfe9e641926dc53e14b7"
  elsif Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.0.5/sqruff-darwin-aarch64.tar.gz"
    sha256 "ccb566113b8ef6b1e5b0244d0df0265bfa8402022fe412b3ec4c1e3e5a6d797e"
  end
  def install
    bin.install "sqruff" => "sqruff"
  end
end
