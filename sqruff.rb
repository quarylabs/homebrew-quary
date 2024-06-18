# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.7.5"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.7.5/sqruff-darwin-aarch64.tar.gz"
    sha256 "c1a30070fe8a89b8f602828fa02a602aeabeada62adeaacd484217ec065fb9c4"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.7.5/sqruff-darwin-x86_64.tar.gz"
    sha256 "0fa9bc8abaf504e8c1b5d90e4a156266be8025ef65f9fae6f70dc9af761ce2e5"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.7.5/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "b5069cd536769267dd7d047053d46a24f0d30daeb4d4c7111d20d791a76f7fcc"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
