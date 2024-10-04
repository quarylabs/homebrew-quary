# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.18.4"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.18.4/sqruff-darwin-aarch64.tar.gz"
    sha256 "47e430873d0b87db1d775f31ce8cbef4b30176fa412904b12e782a37cb17a380"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.18.4/sqruff-darwin-x86_64.tar.gz"
    sha256 "50d2e6c7fcae678d47766a04742afeb2509786ea7a336e801170d3a87dd096cc"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.18.4/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "4bd9aa0b8bbabcaa803c1cc91fdb6a2e8166fc9ffe360af6b67c0639a67833ca"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
