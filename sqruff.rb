# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.7.4"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.7.4/sqruff-darwin-aarch64.tar.gz"
    sha256 "06619f378c3011a7395dec0fb7ce422f411a09a0f56a86fe9baba55b18eaff13"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.7.4/sqruff-darwin-x86_64.tar.gz"
    sha256 "8567db7764c73f4fd70d572f86ef3deff8722e1523ce13d291c54ea92c2136bc"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.7.4/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "ab4f4685018697663cda4f7e99ac2dc92efb661f8c4fb9e020b8654b278ba2d0"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
