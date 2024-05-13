# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.3.0"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.3.0/sqruff-darwin-aarch64.tar.gz"
    sha256 "270e3e6a75c5153788a94cf59b675be0e9c3149f9cbf9205c03d2a7e61a602ed"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.3.0/sqruff-darwin-x86_64.tar.gz"
    sha256 "23a673ad827cd1045767cb3fa84caf225ae4d3aa8aec977285fdb66d334e4356"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.3.0/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "d37588f381a82a888ab4e64d5f1a31f3eebe0d397cbec31ef6599950b0f07959"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
