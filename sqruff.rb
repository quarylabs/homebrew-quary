# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.21.10"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.10/sqruff-darwin-aarch64.tar.gz"
    sha256 "cdb1cb0debee5d640f60376ebd8ee9987ee200591aacfdd15de996b96442c5bd"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.10/sqruff-darwin-x86_64.tar.gz"
    sha256 "cc97b9249e0d7109d2931ddbe8330c9dbfc4de4c69d841efdf6ed34957618ce8"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.10/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "9989bd2d99905440a2ca02d2a9114c15e28a058ef9172768be01823d544774f7"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
