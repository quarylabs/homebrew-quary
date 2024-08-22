# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.14.0"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.14.0/sqruff-darwin-aarch64.tar.gz"
    sha256 "c4b5e8e3cd2a55199a8a9723c442500237e86ad8d05e4b37163fe77605bf4213"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.14.0/sqruff-darwin-x86_64.tar.gz"
    sha256 "d9495765d59bf1428175a5acb6ad2c9a6955e42af7b64829040903bcc2b478a4"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.14.0/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "186705aab519e502cc99c2c8cb898e84c13fefe60d1602ec246f97e9b2f753a7"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
