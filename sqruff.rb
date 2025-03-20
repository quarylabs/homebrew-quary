# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.25.17"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.17/sqruff-darwin-aarch64.tar.gz"
    sha256 "3de1e291e3104ef4a89dbd12211057b4c05f560e271dbd1f59370cb148dae5be"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.17/sqruff-darwin-x86_64.tar.gz"
    sha256 "6abfccf31ada23f5d52c5bd48df8f97c7bbf9b53014cbd2a2486ffe77d3e8055"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.17/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "03434d493d0b6e370d72398ce4c480e85f28aa2bb87b88144e15f6c29b3c72e3"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
