# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.26.6"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.26.6/sqruff-darwin-aarch64.tar.gz"
    sha256 "35f940708163901ef7d9474ee589c369e9f5979274ad4ae0e10e72e368bc487d"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.26.6/sqruff-darwin-x86_64.tar.gz"
    sha256 "1fdcbc72a00981950ea5f2cb1c30393a8b4688184e005e02f4c7b854b4515826"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.26.6/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "06551739998724a2f4e9b7a908caa254b6eb81c466b030f9d3eafb3a440e1d5f"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
