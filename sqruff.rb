# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.25.1"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.1/sqruff-darwin-aarch64.tar.gz"
    sha256 "810083aae762f405a20f0c443d5d3044ec54a65bfa946f0fffb2fa1e6886f5a6"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.1/sqruff-darwin-x86_64.tar.gz"
    sha256 "070903000fd3a29ca56b36db53c22c5e23182670205cbd689f54f95bfe07f185"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.1/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "8e388d922e024895f6543dfd8ded9e98e15cf31065634c0c20897d20974cc015"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
