# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.18.6"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.18.6/sqruff-darwin-aarch64.tar.gz"
    sha256 "de18c43943bfb5e26c52cdb7aa9d8617e66b7ca0ffcde793a9ab025ef98e4b40"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.18.6/sqruff-darwin-x86_64.tar.gz"
    sha256 "f1a01960cac0620d33d7439e766d177c543758ca90507147d040fae2323e7dd2"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.18.6/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "7bfea19c320900e7980ca390f5da2c033c9e015be8f39aaf5658721b76f3a304"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
