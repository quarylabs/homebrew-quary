# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.21.2"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.2/sqruff-darwin-aarch64.tar.gz"
    sha256 "cb969b42ebbca8229b4484ae2503530c4eef16e23829b340a0b270e1a007e6b6"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.2/sqruff-darwin-x86_64.tar.gz"
    sha256 "5e8a2aa7a9035a298b46d67fd26fd753dce0bb2a7cbc403c333f404a398ea21f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.2/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "ae09dfcb0d275bf5317769d6eff8aa62c05942369f63ea5e747164a7db9225d9"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
