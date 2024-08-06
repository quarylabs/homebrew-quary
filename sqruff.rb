# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.11.0"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.11.0/sqruff-darwin-aarch64.tar.gz"
    sha256 "b19eed93baa0f0e9bec30219ddc6cd9f7837c29f0e41052cf3f795ac43b5e2bc"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.11.0/sqruff-darwin-x86_64.tar.gz"
    sha256 "eb1fd36f516151144a84011dcb74e0baea13164f82885bac7605c3bee8b534e2"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.11.0/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "153070a0ebca1f21579a7a4731d5d505b3fb2b1635792900a1d019b6c973848c"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
