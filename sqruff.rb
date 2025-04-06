# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.25.25"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.25/sqruff-darwin-aarch64.tar.gz"
    sha256 "07ac4b509bd2824504a1e1c92a5207f73a0714e1f667811926ffa2e3cfe9dd8f"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.25/sqruff-darwin-x86_64.tar.gz"
    sha256 "3a5b74ad44500c43b4f3eae665a3022e8d7584524dabefacc2b42419f56a32e2"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.25/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "83e9557f78ebe32afc02ab11d63679b1d39898b43230e6f6a35673957abe661d"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
