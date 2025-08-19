# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.29.3"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.29.3/sqruff-darwin-aarch64.tar.gz"
    sha256 "47957a2d34f55a80a684e981213879255f63b4ad906206ef5dc128d1e04c91d3"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.29.3/sqruff-darwin-x86_64.tar.gz"
    sha256 "25168fe048ce427cbfe4f1cd25d61b04ad6f9ab5f6b242617e15b38dd12a8c10"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.29.3/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "8236036b86ccd009ea5372d8ef529cbbe27786dfba1449b169e17c371bde0a1c"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
