# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.4.10"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.4.10/sqruff-darwin-aarch64.tar.gz"
    sha256 "193624b913309333925d1c7f315dac1fdc0c61a62eb70fb89b47d9390f988356"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.4.10/sqruff-darwin-x86_64.tar.gz"
    sha256 "decff3ad8df141a0c48fba89e5b5d8460ecdf4c3c882dab29d97c154eb798321"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.4.10/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "755297097305ef98b2e8509aff7594c7eb22604e0aaf9e580e651c6ab2cd2ce1"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
