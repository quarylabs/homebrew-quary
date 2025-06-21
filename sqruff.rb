# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.26.8"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.26.8/sqruff-darwin-aarch64.tar.gz"
    sha256 "9618f54b8f78e1b08ca70822022e75e0799f59aa4c5b4e31d71804595166899f"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.26.8/sqruff-darwin-x86_64.tar.gz"
    sha256 "2bddda4342f469a4289605d492389bfe436d4efb69df96aaf3ad521bb5116988"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.26.8/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "228fa45e0df02e8becc620fa88581c04d68d27064fcfb171d7a5d6dd85a52eac"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
