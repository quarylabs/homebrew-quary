# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.0.8"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.0.8/sqruff-darwin-aarch64.tar.gz"
    sha256 "390483a36b29e791d9431885cd840675d3f5627a7f1a3f68c1cd4c498557f91b"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.0.8/sqruff-darwin-x86_64.tar.gz"
    sha256 "ac64dc1b8e410b02afe5d186e5b6e52eace00e8f7abf2e43abe0fe7e21f51fc4"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.0.8/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "b0b9d4bb154373fb2e62a71e30fe79ada7a7af66d3686fe67a7c518eede1c8f8"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
