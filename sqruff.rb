# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.16.0"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.16.0/sqruff-darwin-aarch64.tar.gz"
    sha256 "c65527185732233a9ebcd604fd1a5331fa5c56010ccf5d94749ccb78c6e3d157"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.16.0/sqruff-darwin-x86_64.tar.gz"
    sha256 "0b96ec0aea23fa0886c2268081d7e01615e5c340bfd3f8946b9468e73fb6985f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.16.0/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "10373629a8a73439e188fe5133397fafa94fc66179e97104df5b882acadf7614"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
