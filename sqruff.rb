# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.25.28"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.28/sqruff-darwin-aarch64.tar.gz"
    sha256 "82b6283c7d1d64b5c2088525abb856086a22d1f959faffd73b3ccbea8e9d9a46"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.28/sqruff-darwin-x86_64.tar.gz"
    sha256 "db74939d3221b28e94b3231970bbc006833e2449bb2ecc05dac959f6082c2a97"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.28/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "5cbc8f71343fa427dd100f5059d405c533444e7b8586c40c64afeb1664e15583"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
