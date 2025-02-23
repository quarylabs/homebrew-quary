# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.25.9"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url ""
    sha256 ""
  elsif OS.mac? && Hardware::CPU.intel?
    url ""
    sha256 ""
  elsif OS.linux? && Hardware::CPU.intel?
    url ""
    sha256 ""
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
