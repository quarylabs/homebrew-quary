# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.10.2"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.10.2/sqruff-darwin-aarch64.tar.gz"
    sha256 "2dfc701902a48204741a9863431cb5edf33486ba9754f976a7692f9f5c07a1d9"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.10.2/sqruff-darwin-x86_64.tar.gz"
    sha256 "f986a3eb30ecf0abba0bf32f818702e33aae318e93e8b0d3e0d6377a274dad5c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.10.2/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "fd23e031ea65530179a0aeab03aee821e58d3fe295cc84e290cbbb3d70fd1d71"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
