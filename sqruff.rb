# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.22.0"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.22.0/sqruff-darwin-aarch64.tar.gz"
    sha256 "15409846c0fc407feae434628e7f09f8bb707d1ebbd4bbacfd83f3412f572121"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.22.0/sqruff-darwin-x86_64.tar.gz"
    sha256 "d819a8b0d83e9b32366a07a636a62ba1b6756b9d701eb2978d4ba270fc81f1ac"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.22.0/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "e90a65bed804902eb3777a1a123a23acdca8f738762cbda939f8fc803b15563e"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
