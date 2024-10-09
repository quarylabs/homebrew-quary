# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.19.0"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.19.0/sqruff-darwin-aarch64.tar.gz"
    sha256 "d5297c5a35fb4f559a6805e68bb4ecdf8869e0bb21100938f5a3c9d88439c3ae"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.19.0/sqruff-darwin-x86_64.tar.gz"
    sha256 "4d8471d12b43567b04394a5810c353dbfae2db582c3ae1b1e611d89ad1d758ac"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.19.0/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "9309a19ddd6794e90efd069a6d8721605beafe357fe29171ef44e9387edfe244"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
