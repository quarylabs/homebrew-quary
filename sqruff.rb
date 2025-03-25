# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.25.19"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.19/sqruff-darwin-aarch64.tar.gz"
    sha256 "f028ba813ebdca0570b4744cdbf6bae1eb1c646744d06c92e6e788942cd770bb"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.19/sqruff-darwin-x86_64.tar.gz"
    sha256 "44563b2ce1a3feb85b40085f19a324d608270c09f98bb91a2f1ed499b5da0981"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.25.19/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "ec4ccf92975c5a450e97958dcd6ba78dc1f3ab0f14c6a2150f28a4ff40ff05ca"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
