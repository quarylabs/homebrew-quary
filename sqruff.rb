# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.18.1"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.18.1/sqruff-darwin-aarch64.tar.gz"
    sha256 "b6408b7c2a2fb5a3b95b44fbf9840ba7150d7d34f27f8cf90707b104f8b3fdcb"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.18.1/sqruff-darwin-x86_64.tar.gz"
    sha256 "ba4215c567d565414034555114098aba195e6697812c652bcfa19cbd01fe5542"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.18.1/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "7fe3d629dedbb3d793e6cddb60e40aff06b883ebb4bae5cdb89ca2df7f27568d"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
