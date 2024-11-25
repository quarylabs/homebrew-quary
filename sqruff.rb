# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.21.3"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.3/sqruff-darwin-aarch64.tar.gz"
    sha256 "6ba6bcdaecfdea4826e8fc74a5f9b7e0dd2bfbe3682b6bca3e5cbeeffe5496aa"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.3/sqruff-darwin-x86_64.tar.gz"
    sha256 "722c970b777bbc711bd32c59cbdc115563e5ba462f2bc4e6d147c49f0cd256cb"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.3/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "501455dcec16064fad971a64929e33ee395ea61f6df5cf248fd0f9036da6e09e"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
