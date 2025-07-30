# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.29.2"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.29.2/sqruff-darwin-aarch64.tar.gz"
    sha256 "0d1a8768d03c0f7cfc97d4795c538d2fa1df4df06f8a5ce3f17df011128d5201"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.29.2/sqruff-darwin-x86_64.tar.gz"
    sha256 "6cd997730f2307bb3f130664ef713476b2cebd9dd6ebec5aef2e5e1b716a15a4"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.29.2/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "576ab50a818d6df15e16e51955cdfc65a75204f3fac1c7c5df74268f53a2f165"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
