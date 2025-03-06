# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.25.14"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.14/sqruff-darwin-aarch64.tar.gz"
    sha256 "5f4c1b5da0825931e8e974c71a7ddff1636b0d699bddc3f78d4344f1c0feea68"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.14/sqruff-darwin-x86_64.tar.gz"
    sha256 "e4fee0e86d2b1f67b2210ecc9e903594a6dd5948ad9f6e61e4e4807543ebfe31"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.14/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "de2f0c2b5e0eb1f5d828dff10c873f8bc26589ef59aaf8cc3376e1925977b995"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
