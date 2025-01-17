# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.24.1"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.24.1/sqruff-darwin-aarch64.tar.gz"
    sha256 "7abb0b821b915c6c0a72c22f868602d486f24a0cf612a2848f96b42cb0b167d5"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.24.1/sqruff-darwin-x86_64.tar.gz"
    sha256 "dcd116f9fa69019ab97085ed37b91ea529e25dfb29c27a126c4e2102c236a794"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.24.1/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "4c655852db1f46c53c0c2faa4bba7aba48ff0b541f656ee9be6e5fbd76b537ed"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
