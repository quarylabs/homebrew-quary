# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.10.1"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.10.1/sqruff-darwin-aarch64.tar.gz"
    sha256 "051d989314b900d0531c870e974a1db37316d0437847cc926ad502ffbd96e960"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.10.1/sqruff-darwin-x86_64.tar.gz"
    sha256 "5dfee0a3c69db419496b741b15d50c0eca6a21ed7eb86b1477075e9f1daff194"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.10.1/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "9364b7fa381c7cb0ebc96a2c77be41c640b4cce939688d068954e2c70178af80"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
