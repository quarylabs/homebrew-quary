# typed: true
# frozen_string_literal: true

# Sqruff: Homebrew Formula
class Sqruff < Formula
  desc "High-speed SQL linter, written in Rust"
  homepage "https://github.com/quarylabs/sqruff"
  version "0.21.4"

  # Determine the OS and architecture to set the appropriate URL and SHA-256
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.4/sqruff-darwin-aarch64.tar.gz"
    sha256 "24f993566d693a3be3715f19c717f2d4ab9011c2c58d3b3aa891614e9c09d0c4"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.4/sqruff-darwin-x86_64.tar.gz"
    sha256 "24fe5b007526dabc536b355b7d203f54584889b0325af38396fe87d8f685b389"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/quarylabs/sqruff/releases/download/v0.21.4/sqruff-linux-x86_64-musl.tar.gz"
    sha256 "dc9e603a908ec91a5af1736ba68e3951a55791e99a044e3d5ab0f4ad9ee86bfd"
  end

  def install
    bin.install "sqruff" => "sqruff"
  end
end
