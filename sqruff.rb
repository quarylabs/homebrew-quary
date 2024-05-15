# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.4.8"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.4.8/sqruff-darwin-aarch64.tar.gz"
    sha256 "e39fa5ade09f33d9de02f240ddbd0cf1168cca9c721ef9d796b332764f81c232"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.4.8/sqruff-darwin-x86_64.tar.gz"
    sha256 "1e9965c3946ac8bad05fa7f1014f6ca173d3396f8a247841c8c2acc513c263d7"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.4.8/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "f4121b4865349d7aa7d363161b187bce64569a6762d1a2f65bf29e6427b92476"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
