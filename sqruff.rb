# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.25.12"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.12/sqruff-darwin-aarch64.tar.gz"
    sha256 "0d9655d202ee4c3c5c1e25449b60c8445fccccdbe1bbac43592361b8da77e419"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.12/sqruff-darwin-x86_64.tar.gz"
    sha256 "c8fd62e7b15ca086be155037585b8a092df16e628d7fced57c21db145ea49082"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.12/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "7e79f4a4254e8e79d4c5d981ba52ca4cd39214f9aed83a0136f110033c9f7fe5"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
