# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.15.2"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.15.2/sqruff-darwin-aarch64.tar.gz"
    sha256 "a7d9d384668ff4e2424ecd669678d6520ab309b3c311b59393a4b1d0ea213683"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.15.2/sqruff-darwin-x86_64.tar.gz"
    sha256 "4b171dbf7b384a47f5263485a45c0065b69a3d982299116bac707935edb43ab9"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.15.2/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "0e3d1cb8a7cff0fa1ddf4a5bdf8b48996843ac299e5bfcee985a0bf356e39c19"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
