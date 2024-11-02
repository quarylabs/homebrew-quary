# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.20.2"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.20.2/sqruff-darwin-aarch64.tar.gz"
    sha256 "448b9cda5b67e971573d4e68d0560720e8bb81a64f9dd96fa7a5273bdd799a21"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.20.2/sqruff-darwin-x86_64.tar.gz"
    sha256 "db4d87a46be137a1645f33b630b5e4bffe60f3fdfae64c4e7dfc14342e30648c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.20.2/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "997e3d2d167ffeb2ab0f284f215ac12b46199581662396cd80484c01044977fc"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
