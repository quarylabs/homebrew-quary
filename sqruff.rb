# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.18.0"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.18.0/sqruff-darwin-aarch64.tar.gz"
    sha256 "ef1887bd256b681f3daabdfe9508934f7732eaad9e6d50c99f2e2efd88cb1099"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.18.0/sqruff-darwin-x86_64.tar.gz"
    sha256 "eecf9157fe69c8613052db51952157837dbd94609d45e63ce3e80c1542611292"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.18.0/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "61206981f056206a3cfd1004cdee7407eeaaee599f94c982124904dd139eb411"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
