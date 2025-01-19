# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.24.2"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.24.2/sqruff-darwin-aarch64.tar.gz"
    sha256 "cf41e551a95f3776e0af8e856a83fb015d60a03a51dd31cf41ccb6854796e5f2"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.24.2/sqruff-darwin-x86_64.tar.gz"
    sha256 "a74f882b918b54b994ff1021b760663aad64e02fc83ed2207b9b9c4a4e0e6f1f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.24.2/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "012f07d70e474ed66145bee93655c18ce813d6b91fa346ca96683757cf682226"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
